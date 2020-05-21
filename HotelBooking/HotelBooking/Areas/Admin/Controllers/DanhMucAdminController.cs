using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HotelBooking.Models;
using System.Data.SqlClient;

namespace HotelBooking.Areas.Admin.Controllers
{
    public class DanhMucAdminController : Controller
    {
        //
        private MyDbContext context = new MyDbContext();
        // GET: /Admin/DanhMucAdmin/

        public ActionResult IndexAdmin()
        {
            return View();
        }

        public ActionResult Profile()
        {
            return View();
        }

        public ActionResult QlyTaiKhoan()
        {
            return View();
        }

        public ActionResult QLyPhong()
        {
            return View();
        }

        public ActionResult QLyLoaiPhong()
        {
            return View();
        }

        public ActionResult QLyDichVu()
        {
            return View();
        }

        public ActionResult QLyKhachHang()
        {
            var model = new MyDbContext().Users.SqlQuery("getAllCus");
            return View(model);
        }

        public ActionResult QLyDonDatPhong()
        {
            return View();
        }

        public ActionResult QLyKhuyenMai()
        {
            return View();
        }

        public ActionResult QLyGallery()
        {
            return View();
        }

        public ActionResult QLyLienHe()
        {
            return View();
        }

        public ActionResult QLyChiTietDonDatphong()
        {
            return View();
        }
    }
}
