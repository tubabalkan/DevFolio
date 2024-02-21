using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DevFolio.Models;
using System.Web.Security;
namespace DevFolio.Controllers
{
    public class LoginController : Controller
    {
        DbDevFolioEntities db = new DbDevFolioEntities();

        public object ForsAuthentication { get; private set; }

        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(TblAdmin p)
        {
            var bilgi = db.TblAdmin.FirstOrDefault(x => x.UserName == p.UserName && x.Password == p.Password);
            if(bilgi != null)
            {
                FormsAuthentication.SetAuthCookie(bilgi.UserName, false);
                Session["UserName"] = bilgi.UserName.ToString();
                return RedirectToAction("AboutList", "About");
            }
            else
            {
                return RedirectToAction("Index", "Login");
               

            }
            
        }
    }
}