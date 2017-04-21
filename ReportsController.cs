
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Denial_Coding.BAL.Generics;
using Denial_Coding.BAL.Managers;
using Denial_Coding.BAL.ViewModels;


namespace Denial_Coding.Controllers
{
    public class ReportsController : Controller
    {
        IReportService managerObj = new ReportManager();
        //IImportService managerObjImp = new ImportManager();

        public ActionResult ProductionReport()
        {
            ReportsViewModel model = new ReportsViewModel();
            model.PracticeList = managerObj.GetPracticeList();
            model.ClientList = managerObj.GetClientList();
            model.CodingStatusList = managerObj.GetCodingStatusList();
            model.CoderList = managerObj.getCoderNames(1, 2).OrderBy(x => x.Text).ToList();                       
            return View(model);
        }

        public ActionResult GetReportDetails(string fromDos, string toDos, string Practice, string Client, string Denial, string Status, string Coder)
        {
            int Practice_id = Convert.ToInt32(Practice.ToString());
            if (fromDos=="")
            {
                fromDos=null;
            } 
            if (toDos=="")
            {
                toDos=null;
            }
            if (Client == "-- Select --")
            {
                Client=null;
            }
            if (Denial == "--Select--")
            {
                Denial=null;
            }
            if (Status == "-- Select --")
            {
                Status=null;
            }
            if (Coder == "-- Select --")
            {
                Coder=null;
            } 
            return PartialView("_ReportViewer", managerObj.GetProductionReportDetails(fromDos, toDos, Practice_id, Client, Denial, Status, Coder));
        }

        public JsonResult ProductionReportExport()
        {
            managerObj.ExportData();
            return Json("", JsonRequestBehavior.AllowGet);
        }
	}
}