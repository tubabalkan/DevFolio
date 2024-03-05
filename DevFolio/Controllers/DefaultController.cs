using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DevFolio.Models;

namespace DevFolio.Controllers
{
    [AllowAnonymous]
    public class DefaultController : Controller
    {
        DbDevFolioEntities db = new DbDevFolioEntities();
        public ActionResult Index()
        {
            return View();
        }
        public PartialViewResult PartialHead()
        {
            return PartialView();
        }
        public PartialViewResult PartialNavbar()
        {
            return PartialView();
        }
        public PartialViewResult PartialFeature()
        {
            var values = db.TblFeature.ToList();
            return PartialView(values);
        }
        public PartialViewResult PartialProfile()
        {
            var values = db.TblProfile.ToList();
            return PartialView(values);
        }
        public PartialViewResult PartialSkill()
        {
            var values = db.TblSkill.ToList();
            return PartialView(values);
        }
        public PartialViewResult PartialAbout()
        {
            var values = db.TblAbout.ToList(); 
            return PartialView(values);
        }
        public PartialViewResult PartialTestimonial()
        {
            var values = db.TblTestimonial.ToList();
            return PartialView(values);
        }
        public PartialViewResult PartialPortfolio()
        {
            var values = db.TblProject.ToList();
            return PartialView(values);
        }
        [HttpGet]
        public PartialViewResult PartialMessage()
        {
            
            return PartialView();
        }
        [HttpPost]
        public PartialViewResult PartialMessage(TblContact t)
        {
            db.TblContact.Add(t);
            db.SaveChanges();
            return PartialView();
        }
        public PartialViewResult PartialAdress()
        {
            var values = db.TblAdress.ToList();
            return PartialView(values);
        }
        public PartialViewResult PartialSocialMedia()
        {
            var values = db.TblSocialMedia.ToList();
            return PartialView(values);
        }

        public PartialViewResult PartialServices()
        {
            var values = db.TblServices.ToList();
            return PartialView(values);
        }
        public PartialViewResult Partialİstatistik()
        {
            ViewBag.categoryCount = db.TblCategory.Count();
            ViewBag.skillAvgValue = db.TblSkill.Average(x => x.SkillValue);
            ViewBag.ServiceCount = db.TblServices.Count();
            ViewBag.projectCount = db.TblProject.Count();
            return PartialView();
        }
        public PartialViewResult PartialScript()
        {
            return PartialView();
        }
        public PartialViewResult PartialFooter()
        {
            return PartialView();
        }


    }
}