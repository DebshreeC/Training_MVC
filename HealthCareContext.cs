﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    //[DbConfigurationType(typeof(EF6CodeConfiguration))]
    public class HealthCareContext:DbContext
    {

        public HealthCareContext()
            : base("HC_Conn")
        {

        }
        public DbSet<Insurance> Insurances { get; set; }
        public DbSet<Patient> Patients { get; set; }

       protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.HasDefaultSchema("P30381");
            modelBuilder.Entity<Insurance>().ToTable("Insurance_tbl");
            modelBuilder.Entity<Patient>().ToTable("Patient_tbl");
           //composite key
            //modelBuilder.Entity<Insurance>().HasKey<Object>
              //  (s => new { s.InsuranceId, s.InsCode});
           
           modelBuilder.Entity<Insurance>()
                       .Property(p => p.DOS)
                       .HasColumnName("DateOfService")
                       .HasColumnOrder(3)
                       .HasColumnType("date");
            modelBuilder.Entity<Insurance>()
                        .Property(p => p.InsCode)
                        .HasColumnName("InsuranceCode")
                        .HasColumnOrder(4);
            modelBuilder.Entity<Insurance>()
                   .Property(p => p.Address)
                  .IsOptional();


            modelBuilder.Entity<Transactions>().HasRequired(m => m.qa).WithMany(t => t.QATransactions).HasForeignKey(m => m.QAId).WillCascadeOnDelete(false);
            modelBuilder.Entity<Transactions>().HasRequired(m => m.user).WithMany(t => t.UserTransactions).HasForeignKey(m => m.UserId).WillCascadeOnDelete(false);

        }
         
 
    }
}