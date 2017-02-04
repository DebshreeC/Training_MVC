using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebApplication1.Models
{
    public class Transactions
    {
        [Key]
        public int TransactionId { get; set; }
        public int PatientId { get; set; }
         [ForeignKey("PatientId")]
        public Patient patient { get; set; }
        public DateTime SDate { get; set; }
        public DateTime EDate { get; set; }
        [Index("ScenarioIdIDX",IsUnique=true)]
        public int ScenarioId { get; set; }
        public int StatusCode { get; set; }
        public int QAId { get; set; }
        public int UserId { get; set; }
        [ForeignKey("QAId")]
        public HCUser qa { get; set; }
        [ForeignKey("UserId")]
        public HCUser user { get; set; }

    }
}