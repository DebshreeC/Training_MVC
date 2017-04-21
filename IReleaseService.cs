using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using Denial_Coding.BAL.ViewModels;
using DC.DAL;

namespace Denial_Coding.BAL.Managers
{
    public interface IReleaseService
    {
        List<TransactionModel> LoadReleaseInboxData();
        void ReleaseTransaction(int imp_value);
        void DeleteReleasedList(int IMPORT_ID);

    }
}
