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

namespace Denial_Coding.BAL.Managers
{
    public class ReleaseManager : IReleaseService
    {
        #region LoadReleaseInboxData
        public List<TransactionModel> LoadReleaseInboxData()
        {
            using (McKesson_GVLEntities _context = new McKesson_GVLEntities())
            {
                int projectId = Convert.ToInt32(HttpContext.Current.Session[Constants.ProjectId]);
                string userName = HttpContext.Current.Session[Constants.UserName].ToString();
                int locationid = Convert.ToInt32(HttpContext.Current.Session[Constants.LocationId]);


                string[] coderlist = (from coder in _context.tbl_USER_ACCESS
                                 where coder.PROJECT_ID == projectId && (coder.ACCESS_ID == 2 || coder.ACCESS_ID == 1) && coder.LOCATION_ID == locationid && (coder.TL_NTLG == userName || coder.USER_NTLG == userName)
                                 && coder.LOCATION_ID == locationid
                                 select coder.USER_NTLG).ToArray();

                string idString = String.Join(",", coderlist);

                List<TransactionModel> list = (from data in _context.tbl_IMPORT_TABLE
                                               join tran in _context.tbl_TRANSACTION on data.IMPORT_ID equals tran.IMPORT_ID
                                               join tranD in _context.tbl_TRANSACTION_DETAILS on tran.TRANS_ID equals tranD.TRANS_ID
                                               where data.PROJECT_ID == projectId && coderlist.Contains(tranD.CODED_TO) && tranD.CODED_STATUS == "Coding Completed"

                                               select new TransactionModel
                                               {
                                                   IMPORT_ID = data.IMPORT_ID,
                                                   ACCOUNT_NO = data.ACCOUNT_NO,
                                                   CLIENT_ID = SqlFunctions.StringConvert((double)data.CLIENT_ID).Trim(),
                                                   DOS = data.DOS,
                                                   DENIAL_WORKED_DT = data.DENIAL_WORKED_DT,
                                                   DENIAL_TYPE = data.DENIAL_TYPE
                                               }).ToList();
                return (from item in list
                        select new TransactionModel
                        {
                            IMPORT_ID = item.IMPORT_ID,
                            ACCOUNT_NO = item.ACCOUNT_NO,
                            CLIENT_ID = item.CLIENT_ID,
                            DOS = item.DOS,
                            DENIAL_WORKED_DT = item.DENIAL_WORKED_DT,
                            DENIAL_TYPE = item.DENIAL_TYPE
                        }).ToList();

            }
        }
        #endregion

        #region ReleaseTransaction
        public void ReleaseTransaction(int import_id)
        {
            using (McKesson_GVLEntities _context = new McKesson_GVLEntities())
            {                
                var _tr_id = (from sub in _context.tbl_TRANSACTION where sub.IMPORT_ID == import_id select new { sub.TRANS_ID }).Single();

                int trans_id = Convert.ToInt32(_tr_id.TRANS_ID.ToString());

                var _tr_details = _context.tbl_TRANSACTION_DETAILS.Where(x => x.TRANS_ID == trans_id).SingleOrDefault();

                if (_tr_details != null)
                {
                    _tr_details.CODED_STATUS = "Released";
                    _tr_details.RELEASED_DATE = DateTime.Now;

                }
                _context.SaveChanges();
            }
        }
        #endregion

        #region DeleteReleasedList
        public void DeleteReleasedList(int IMPORT_ID)
        {
            try
            {
                AdminModel model = new AdminModel();
                using (McKesson_GVLEntities _context = new McKesson_GVLEntities())
                {
                    SqlConnection conObj = new SqlConnection(Constants.ConnectionString);
                    conObj.Open();
                    SqlCommand cmdObj = new SqlCommand(Constants.SpDeleteReleasedAccount, conObj);
                    cmdObj.CommandType = CommandType.StoredProcedure;
                    cmdObj.Parameters.AddWithValue("@IMPORT_ID", IMPORT_ID);                    
                    cmdObj.ExecuteNonQuery();
                    conObj.Close();
                }
            }
            catch (Exception ex)
            {

            }
        }
        #endregion
    }
}
