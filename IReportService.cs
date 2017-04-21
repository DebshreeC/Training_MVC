using Denial_Coding.BAL.ViewModels;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace Denial_Coding.BAL.Managers
{
    public interface IReportService
    {
        List<SelectListItem> GetPracticeList();
        List<SelectListItem> GetClientList();
        List<SelectListItem> getCoderNames(int tl, int user);
        List<SelectListItem> GetCodingStatusList();
        void ExportData();
        DataTable GetProductionReportDetails(string fromDos, string toDos, int Practice, string Client, string Denial, string Status, string Coder);
    }
}
