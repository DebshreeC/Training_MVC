using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Web.UI;
using Denial_Coding.BAL.Generics;
using Denial_Coding.BAL.Managers;
using Denial_Coding.BAL.ViewModels;

namespace Denial_Coding.Controllers
{
    public class AdminController : Controller
    {
        //
        // GET: /Admin/
        public ActionResult Index()
        {
            return View();
        }

        IAdminService managerObj = new AdminManager();
        

        public ActionResult AdminIndex()
        {
            return View(managerObj.GetPracticeList());
        }

        public ActionResult LoadColumnInbox(int Practice_Id)
        {           
            return PartialView("_ColumnInbox", managerObj.GetColumnListData(Practice_Id));
        }

        [HttpPost]
        public JsonResult AddColumnList(AdminModel amodel)
        {
            managerObj.ADDColumn(amodel);
            return Json("", JsonRequestBehavior.AllowGet);
        }
        
        public ActionResult EditColumnList(int ColumnId,string ColumnName,string Display_Name)
        {
            return PartialView("_EditColumn", managerObj.GetColumnDetails(ColumnId,ColumnName,Display_Name));            
        }
        [HttpPost]
        public JsonResult DeleteColumnList(int ColumnId, string ColumnName)
        {
            managerObj.DELETEColumn(ColumnId,ColumnName);
            return Json("", JsonRequestBehavior.AllowGet);
        }
        public JsonResult SaveAndUpdateColumnChanges(AdminModel model)
        {
            managerObj.SaveAndUpdateColumnChanges(model);
            return Json("", JsonRequestBehavior.AllowGet);
        }

        public ActionResult LoadMapInbox(int Practice_Id)
        {
            return PartialView("_MappingInbox", managerObj.getDynamicMappingColumn(Practice_Id));
        }

        [HttpPost]
        public JsonResult AddMappingList(int Practice_Id, string ColumnID)
        {
            string arr = ColumnID.ToString();
            string[] array = arr.Split(',');
            for (int i = 0; i < array.Count(); i++)
            {
                int column_value = Convert.ToInt32(array[i].ToString());
                managerObj.ADDMappingColumn(Practice_Id, column_value);
            }            
            return Json("", JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult EditMappingList(int Practice_Id, string ColumnID)
        {
            string arr = ColumnID.ToString();
            string[] array = arr.Split(',');
            for (int i = 0; i < array.Count(); i++)
            {
                int column_value = Convert.ToInt32(array[i].ToString());
                managerObj.ADDMappingColumn(Practice_Id, column_value);
            }
            return Json("", JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteColumnAll(string arrayOfcolumnid, string arrayOfcolumnname)
        {
            string arrcolumnid = arrayOfcolumnid.ToString();
            string[] arraycolumnid = arrcolumnid.Split(',');
            string arrcolumnname = arrayOfcolumnname.ToString();
            string[] arraycolumnname = arrcolumnname.Split(',');
            for (int i = 0; i < arraycolumnid.Count(); i++)
            {
                int column_id = Convert.ToInt32(arraycolumnid[i].ToString());
                string column_name = arraycolumnname[i].ToString();
                if (column_id == 0 && column_name == "")
                {

                }
                else
                {
                    managerObj.DELETEColumn(column_id, column_name);
                }
            }
            
            return Json("", JsonRequestBehavior.AllowGet);
        }

        public ActionResult LoadClientInbox()
        {
            return PartialView("_ClientInbox", managerObj.GetClientListData());
        }

        [HttpPost]
        public JsonResult AddClientList(int clientid,string clientname)
        {
            managerObj.ADDClient(clientid,clientname);
            return Json("", JsonRequestBehavior.AllowGet);
        }

        //public ActionResult EditClientList(int CID)
        //{
        //    DataTable dt = managerObj.GetClientDetails(CID);
        //    ViewBag.AuthorList = dt;
        //    return View();
        //}
        //[HttpPost]
        //public JsonResult DeleteClientList(int CID)
        //{
        //    //managerObj.DELETEClient(CID);
        //    return Json("", JsonRequestBehavior.AllowGet);
        //}

        [HttpPost]
        public JsonResult DeleteClientAll(string arrayOfclientid)
        {
            string arrClientid = arrayOfclientid.ToString();
            string[] arraycolumnid = arrClientid.Split(',');
            for (int i = 0; i < arraycolumnid.Count(); i++)
            {
                int client_id = Convert.ToInt32(arraycolumnid[i].ToString());
                
                if (client_id == 0)
                {

                }
                else
                {
                    managerObj.DELETEClient(client_id);
                }
            }

            return Json("", JsonRequestBehavior.AllowGet);
        }

        //public ActionResult LoadAccountInbox()
        //{
        //    return PartialView("_AccountInbox", managerObj.GetAccountListData());
        //}

        //[HttpPost]
        //public JsonResult AddAccountList(string Accountno, string Accountname)
        //{
        //    managerObj.ADDAccount(Accountno, Accountname);
        //    return Json("", JsonRequestBehavior.AllowGet);
        //}

        //[HttpPost]
        //public JsonResult DeleteAccountAll(string arrayOfAccount_no)
        //{
        //    string arrAccount_no = arrayOfAccount_no.ToString();
        //    string[] arraycolumnid = arrAccount_no.Split(',');
        //    for (int i = 0; i < arraycolumnid.Count(); i++)
        //    {
        //        string Account_no = arraycolumnid[i].ToString();

        //        if (Account_no == "")
        //        {

        //        }
        //        else
        //        {
        //            managerObj.DELETEAccount(Account_no);
        //        }
        //    }

        //    return Json("", JsonRequestBehavior.AllowGet);
        //}

        public ActionResult EnterErrorList()
        {
            return PartialView("_ErrorAdd");
        }
        public JsonResult SaveError(string denial_type,string error_name)
        {
            managerObj.SaveError(denial_type,error_name);
            return Json("", JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult updateerrorsubList(string denial_type,string Error, string subname)
        {
            managerObj.updateerrorsubList(denial_type,Error, subname);
            return Json("", JsonRequestBehavior.AllowGet);
        }

        public ActionResult LoadErrorInbox()
        {
            return PartialView("_ErrorInbox", managerObj.LoadErrorInbox());
        }

        [HttpPost]
        public JsonResult DeleteErrorAll(string arrayOfAccount_no)
        {
            string arrAccount_no = arrayOfAccount_no.ToString();
            string[] arraycolumnid = arrAccount_no.Split(',');
            for (int i = 0; i < arraycolumnid.Count(); i++)
            {
                int Account_no = Convert.ToInt32(arraycolumnid[i].ToString());

                if (Account_no == 0)
                {

                }
                else
                {
                    managerObj.DELETEError(Account_no);
                }
            }

            return Json("", JsonRequestBehavior.AllowGet);
        }


        public ActionResult LoadexcodeInbox()
        {
            return PartialView("_ExCodeInbox", managerObj.LoadexcodeInbox());
        }

        public JsonResult AddexcodeList(string excodeid, string empidname, string ntlgname)
        {
            managerObj.AddexcodeList(excodeid, Convert.ToInt32(empidname), ntlgname);
            return Json("", JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteExcodeAll(string arrayOfexcodeid)
        {
            string arrexcode_no = arrayOfexcodeid.ToString();
            string[] arrayexcodeid = arrexcode_no.Split(',');
            for (int i = 0; i < arrayexcodeid.Count(); i++)
            {
                string Excode_no = arrayexcodeid[i].ToString();

                if (Excode_no == "")
                {

                }
                else
                {
                    managerObj.DeleteExcodeAll(Excode_no);
                }
            }

            return Json("", JsonRequestBehavior.AllowGet);
        }
	}
}