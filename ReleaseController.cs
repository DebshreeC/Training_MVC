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
    public class ReleaseController : Controller
    {
        IReleaseService managerObj = new ReleaseManager();


        public ActionResult Release()
        {
            return View();
        }
        public ActionResult LoadReleaseInbox()
        {
            return PartialView("_ReleaseInbox", managerObj.LoadReleaseInboxData());
        }

        [HttpPost]
        public JsonResult ReleaseTransaction(string IMPID)
        {
            string arr = IMPID.ToString();
            string[] array = arr.Split(',');
            for (int i = 0; i < array.Count(); i++)
            {
                int imp_value = Convert.ToInt32(array[i].ToString());
                if (imp_value == 0)
                { 
                
                }
                else
                {
                    managerObj.ReleaseTransaction(imp_value);
                }
            }
            return Json("", JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult DeleteReleasedList(int IMPORT_ID)
        {
            managerObj.DeleteReleasedList(IMPORT_ID);
            return Json("", JsonRequestBehavior.AllowGet);
        }
	}
}