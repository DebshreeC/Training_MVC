using Denial_Coding.BAL.ViewModels;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using DC.DAL;

namespace Denial_Coding.BAL.Managers
{
    public interface IAdminService
    {
        AdminModel GetPracticeList(); 
        List<AdminModel> GetColumnListData(int Practice_Id);
        AdminModel GetColumnDetails(int ColumnId, string ColumnName, string Display_Name);
        void ADDColumn(AdminModel amodel);
        void DELETEColumn(int ColumnId, string ColumnName);
        void SaveAndUpdateColumnChanges(AdminModel model);
        
        DataTable getDynamicMappingColumn(int Practice_Id);
        void ADDMappingColumn(int Practice_Id, int ColumnID);

        DataTable GetClientListData();
        void ADDClient(int clientid, string clientname);
        //DataTable GetClientDetails(int CID);
        void DELETEClient(int ClientId);

        //DataTable GetAccountListData();
        //void ADDAccount(string Accountno, string Accountname);
        //void DELETEAccount(string Accountno);

        void SaveError(string denial_type,string error_name);
        void updateerrorsubList(string denial_type,string Error, string subname);
        DataTable LoadErrorInbox();
        void DELETEError(int Accountno);


        DataTable LoadexcodeInbox();
        void AddexcodeList(string excodeid, int empidname, string ntlgname);
        void DeleteExcodeAll(string Excode_no);
    }
}
