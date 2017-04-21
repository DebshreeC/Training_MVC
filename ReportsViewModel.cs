using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace Denial_Coding.BAL.ViewModels
{
    public class ReportsViewModel
    {
        public string FromDate { get; set; }
        public string ToDate { get; set; }
        public string UserName { get; set; }
        public List<SelectListItem> PracticeList { get; set; }
        public string SelectedPractice { get; set; }
        public List<SelectListItem> ClientList { get; set; }
        public string SelectedClient { get; set; }
        public List<SelectListItem> CoderList { get; set; }
        public string SeletedCoder { get; set; }
        public List<SelectListItem> CodingStatusList { get; set; }
        public string SeletedCodingStatus { get; set; }

    }
}
