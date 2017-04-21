using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Denial_Coding.BAL.Generics;
using Denial_Coding.BAL.Managers;
using Denial_Coding.BAL.ViewModels;

namespace Denial_Coding.Controllers
{
    public class TransactionController : Controller
    {
        //
        // GET: /Transaction/
        ITransactionService managerObj = new TransactionManager();
        public ActionResult CodingTransaction()
        {
            return View();
        }
        public ActionResult LoadCoderInbox()
        {
            return PartialView("_CoderInbox", managerObj.LoadCoderInboxData());
        }

        public ActionResult EditTransactionList(string Import_ID)
        {
            ViewBag.CLIENTID=managerObj.GetClientList();
            //ViewBag.ACCOUNTNO=managerObj.GetAccountList();
           
            //ViewBag.SUBCATEGORYErrorType=managerObj.GetSubCategoryList();
            return PartialView("_TransactionImport", managerObj.EditTransactionList(Import_ID));            
        }

        [HttpPost]
        public JsonResult UpdateTransaction(FormCollection frm)
        {
            int import_id = Convert.ToInt32(frm["IMPORT_ID"]);
            managerObj.UpdateTransaction(frm, import_id);
            return Json("", JsonRequestBehavior.AllowGet);
        }

        public JsonResult LoadAccountName(int CID)
        {            
            return Json(managerObj.GetAccountName(CID), JsonRequestBehavior.AllowGet);
        }

        public JsonResult ErrorCategorySelection(string denialtype)
        {
            return Json(managerObj.GetErrorCategoryList(denialtype).ToList(), JsonRequestBehavior.AllowGet);
        }
        public JsonResult SubCategorySelection(string errorId)
        {
            return Json(managerObj.GetSubCategoryList(errorId), JsonRequestBehavior.AllowGet);
        }

        public JsonResult LoadEMPName(string CODER_LOGIN_ID)
        {
            //string connectionString = ConfigurationManager.ConnectionStrings["McKesson_GVLEntities"].ConnectionString;
            //ImportModel model = new ImportModel();
            //model.ACCOUNT_NAME = ;
            return Json(managerObj.LoadEMPName(CODER_LOGIN_ID), JsonRequestBehavior.AllowGet);

        }

	}
}