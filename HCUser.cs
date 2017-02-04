using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebApplication1.Models
{
    public class HCUser
    {
        [Key]
        public int UserId { get; set; }
        public String Name { get; set; }
        public Role RoleValue { get; set; }
        public virtual ICollection<Transactions> QATransactions { get; set; }
        public virtual ICollection<Transactions> UserTransactions { get; set; }

    }
}