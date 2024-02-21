using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DevFolio.Models;
namespace DevFolio.Controllers
{
    public class ServicesController : Controller
    {
        DbDevFolioEntities db = new DbDevFolioEntities();
        public ActionResult ServiceList()
        {
            var values = db.TblServices.ToList();
            return View(values);
        }
        [HttpGet]
        public ActionResult CreateServices()
        {
            return View();
        }
        [HttpPost]
        public ActionResult CreateServices(TblServices p)
        {
            db.TblServices.Add(p);
            db.SaveChanges();
            return RedirectToAction("ServiceList");
        }
        public ActionResult DeleteServices(int id)
        {
            var value = db.TblServices.Find(id);
            db.TblServices.Remove(value);
            db.SaveChanges();
            return RedirectToAction("ServiceList");
        }
        [HttpGet]
        public ActionResult UpdateServices(int id)
        {
            var value = db.TblServices.Find(id);
            return View(value);
        }
        [HttpPost]
        public ActionResult UpdateServices(TblServices p)
        {
            var value = db.TblServices.Find(p.ServicesId);
            value.ServicesTitle = p.ServicesTitle;
            value.Description = p.Description;
            db.SaveChanges();
            return RedirectToAction("ServiceList");
        }
    }
}