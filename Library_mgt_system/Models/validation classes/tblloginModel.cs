using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Library_mgt_system.Models.validation_classes
{
    public class tblloginModel
    {
        public int login_id { get; set; }
        [Required]
        public string userName { get; set; }
        [Required]
        public string password { get; set; }
        public Nullable<bool> isApproved { get; set; }
    }
}