﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Library_mgt_system.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Library_mgt_systemEntities : DbContext
    {
        public Library_mgt_systemEntities()
            : base("name=Library_mgt_systemEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<tbl_login> tbl_login { get; set; }
        public virtual DbSet<tbl_user_details> tbl_user_details { get; set; }
        public virtual DbSet<tbl_userType> tbl_userType { get; set; }
    }
}
