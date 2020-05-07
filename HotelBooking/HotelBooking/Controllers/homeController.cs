using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HotelBooking.Controllers
{
    public class homeController : Controller
    {
        //
        // GET: /home/

        //------------------giao dien cua Dang Quang Dat
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult DichVu()
        {
            return View();
        }

        public ActionResult dvNhaHang()
        {
            return View();
        }

        public ActionResult dvHoBoi()
        {
            return View();
        }
        
        public ActionResult dvSpa()
        {
            return View();
        }

        public ActionResult dvGym()
        {
            return View();
        }
        //---------------------------------------------
        public ActionResult KhuyenMai()
        {
            return View();
        }
        public ActionResult LienHe()
        {
            return View();
        }
        //-----------------------
        /*
         Giao diện của vũ đức thắng
         */
        public ActionResult LoaiPhong()
        {
            return View();
        }
        public ActionResult DatPhong()
        {

            return View();
        }
        //----------------sơn
        public ActionResult GioiThieu()
        {
            return View();
        }

        public ActionResult Gallery()
        {
            return View();
        }
        //
        // GET: /home/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /home/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /home/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /home/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /home/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /home/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /home/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
    }
}
