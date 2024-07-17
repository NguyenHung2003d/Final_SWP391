using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using giadinhthoxinh.Models;

namespace giadinhthoxinh.Areas.Admin.Controllers
{
    public class ComplaintsController : Controller
    {
        private giadinhthoxinhEntities db = new giadinhthoxinhEntities();

        public ActionResult Index()
        {
            return View(db.tblComplaints.ToList());
        }
        public ActionResult Delete(int id)
        {
            var complaint = db.tblComplaints.Find(id);
            db.tblComplaints.Remove(complaint);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
