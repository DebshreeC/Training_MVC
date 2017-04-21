using Denial_Coding.BAL.Generics;
using Denial_Coding.BAL.ViewModels;
using DC.DAL;

using Microsoft.Win32.SafeHandles;
using System;
using System.Collections.Generic;
using System.Data;
//using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
//using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Data.Entity;
using System.Data.Entity.SqlServer;
using System.IO;
using System.Threading.Tasks;
using ClosedXML;



namespace Denial_Coding.BAL.Managers
{
    public class ReportManager : IReportService
    {
        #region Get Practice Names
        public List<SelectListItem> GetPracticeList()
        {
            try
            {
                using (McKesson_GVLEntities _context = new McKesson_GVLEntities())
                {
                    //ImportModel model = new ImportModel();
                    string userName = System.Environment.UserName.ToString();

                    int Project_id = Convert.ToInt32(HttpContext.Current.Session[Constants.ProjectId].ToString());

                    var list = (from practice in _context.tbl_PRACTICE_MASTER
                                join project in _context.tbl_PROJECT_MASTER on practice.PROJECT_ID equals project.PROJECT_ID
                                where project.PROJECT_ID == Project_id
                                select new SelectListItem
                                {
                                    Text = practice.PRACTICE,
                                    Value = SqlFunctions.StringConvert((double)practice.PRACTICE_ID).Trim()
                                }).Distinct().ToList();

                    return list;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion       

        #region Get Client Names
        public List<SelectListItem> GetClientList()
        {
            try
            {
                using (McKesson_GVLEntities _context = new McKesson_GVLEntities())
                {
                    //ImportModel model = new ImportModel();
                    string userName = System.Environment.UserName.ToString();

                    int Project_id = Convert.ToInt32(HttpContext.Current.Session[Constants.ProjectId].ToString());

                    var list = (from client in _context.tbl_CLIENT_TABLE
                                //join project in _context.tbl_PROJECT_MASTER on practice.PROJECT_ID equals project.PROJECT_ID
                                //where project.PROJECT_ID == Project_id
                                select new SelectListItem
                                {
                                    Text = SqlFunctions.StringConvert((double)client.Client_ID).Trim(),
                                    Value = SqlFunctions.StringConvert((double)client.Client_ID).Trim()
                                }).Distinct().ToList();

                    return list;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion       

        #region Get Coder Names
        public List<SelectListItem> getCoderNames(int tl, int user)
        {
            try
            {
                using (McKesson_GVLEntities _context = new McKesson_GVLEntities())
                {
                    int projectId = Convert.ToInt32(HttpContext.Current.Session[Constants.ProjectId]);
                    string userName = Convert.ToString(HttpContext.Current.Session[Constants.UserName]);
                    int locationid = Convert.ToInt32(HttpContext.Current.Session[Constants.LocationId]);

                    var list = (from coder in _context.tbl_USER_ACCESS
                                where coder.PROJECT_ID == projectId && (coder.ACCESS_ID == tl || coder.ACCESS_ID == user) && coder.LOCATION_ID == locationid && (coder.TL_NTLG == userName || coder.USER_NTLG == userName)
                                 && coder.LOCATION_ID == locationid
                                select new SelectListItem
                                {
                                    Text = coder.USER_NTLG,
                                    Value = SqlFunctions.StringConvert((double)coder.USER_ID).Trim()
                                }).Distinct().ToList();

                    return list;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion   

        #region GetCodingStatusList
        public List<SelectListItem> GetCodingStatusList()
        {
            try
            {
                using (McKesson_GVLEntities _context = new McKesson_GVLEntities())
                {
                    //ImportModel model = new ImportModel();
                    string userName = System.Environment.UserName.ToString();

                    int Project_id = Convert.ToInt32(HttpContext.Current.Session[Constants.ProjectId].ToString());

                    var list = (from tran in _context.tbl_TRANSACTION_DETAILS
                                //join project in _context.tbl_PROJECT_MASTER on practice.PROJECT_ID equals project.PROJECT_ID
                                //where project.PROJECT_ID == Project_id
                                select new SelectListItem
                                {
                                    Text = tran.CODED_STATUS.Trim(),
                                    Value = tran.CODED_STATUS.Trim()
                                }).Distinct().ToList();

                    return list;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion  

        public void ExportData()
        {
            DataTable table = new DataTable();
            table = HttpContext.Current.Session["denial_export"] as DataTable;


            ClosedXML.Excel.XLWorkbook wbook = new ClosedXML.Excel.XLWorkbook();
            wbook.Worksheets.Add(table, "tab1");
            // Prepare the response
            HttpResponse httpResponse = HttpContext.Current.Response;
            httpResponse.Clear();
            httpResponse.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
            //Provide you file name here
            httpResponse.AddHeader("content-disposition", "attachment;filename=\"ProductionReport.csv\"");

            // Flush the workbook to the Response.OutputStream
            using (MemoryStream memoryStream = new MemoryStream())
            {
                wbook.SaveAs(memoryStream);
                memoryStream.WriteTo(httpResponse.OutputStream);
                memoryStream.Close();
            }

            httpResponse.End();
        }

        #region Get Production Details (Paremeter)

        public DataTable GetProductionReportDetails(string fromDos, string toDos, int Practice, string Client, string Denial, string Status, string Coder)
        {
            int projectId = Convert.ToInt32(HttpContext.Current.Session[Constants.ProjectId]);
            string userName = HttpContext.Current.Session[Constants.UserName].ToString();
            DataSet dsCommon = new DataSet();
            //DataSet dsReport = new DataSet();
            using (McKesson_GVLEntities _context = new McKesson_GVLEntities())
            {
                try
                {
                    var access_id = (from use in _context.tbl_USER_ACCESS where use.USER_NTLG == userName select new { use.ACCESS_ID }).Single();
                    int acc_id = Convert.ToInt32(access_id.ACCESS_ID.ToString());
                    HttpContext.Current.Session[Constants.AccessID] = acc_id;
                    dsCommon.Clear();
                    SqlConnection conObj = new SqlConnection(Constants.ConnectionString);
                    conObj.Open();
                    SqlCommand cmdObj = new SqlCommand(Constants.ProductionTransDetails, conObj);
                    cmdObj.CommandType = CommandType.StoredProcedure;
                    cmdObj.Parameters.AddWithValue("@FromDate", fromDos);
                    cmdObj.Parameters.AddWithValue("@ToDate", toDos);
                    cmdObj.Parameters.AddWithValue("@Project_Id", projectId);
                    cmdObj.Parameters.AddWithValue("@Practice_Id", Practice);
                    cmdObj.Parameters.AddWithValue("@CLIENT_ID", Client);
                    cmdObj.Parameters.AddWithValue("@DENIAL_TYPE", Denial);
                    cmdObj.Parameters.AddWithValue("@CODED_STATUS", Status);
                    cmdObj.Parameters.AddWithValue("@CODED_TO", Coder);
                    cmdObj.Parameters.AddWithValue("@USER_NTLG", userName);
                    cmdObj.Parameters.AddWithValue("@access_id", acc_id);

                    SqlDataAdapter adapter1 = new SqlDataAdapter(cmdObj);
                    adapter1.Fill(dsCommon);
                    conObj.Close();
                    if (dsCommon.Tables[0].Rows.Count > 0)
                    {
                        HttpContext.Current.Session["denial_export"] = dsCommon.Tables[0];
                        return dsCommon.Tables[0];                        
                    }
                    else
                    {
                        return null;
                    }
                }
                catch (Exception e)
                {
                    throw e;
                }
            }
        }
        #endregion

    }
}
