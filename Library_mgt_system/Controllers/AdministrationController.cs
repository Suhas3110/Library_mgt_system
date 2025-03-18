using Library_mgt_system.Models;
using Library_mgt_system.Models.validation_classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Library_mgt_system.Controllers
{
    public class AdministrationController : Controller
    {
        private Library_mgt_systemEntities dbo = new Library_mgt_systemEntities();
        // GET: Administration
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(tblloginModel lg)
        {
            if (ModelState.IsValid)
            {
                var log = dbo.tbl_login.FirstOrDefault(x => x.userName == lg.userName && x.password == lg.password && x.isApproved == true);
                if (log != null)
                {
                    return RedirectToAction("index");
                }
                else {
                    ViewBag.msg = "invalid userName or password or not approved by Librarian!!";
                }
            }
            return View();
        }
        public ActionResult SignUp()
        {
            return View();
        }
    }
}