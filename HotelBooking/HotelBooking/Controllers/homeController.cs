using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HotelBooking.Models;
using HotelBooking.ViewModels;

namespace HotelBooking.Controllers
{
    public class homeController : Controller
    {
        private MyDbContext context = new MyDbContext();
        //
        // GET: /home/

        //------------------giao dien cua Dang Quang Dat
        public List<banner> ListBanner(){

            return context.banners.Where(X => X.imageLink != null).ToList();
        }

        public List<RoomViewModel> ListRoom()
        {
            var model = from a in context.Rooms
                        join b in context.ImageRooms on a.Id_Room equals b.Id_Room
                        join c in context.RoomTypes on a.Id_Type equals c.Id_Type
                        select new RoomViewModel()
                        {
                            nameType = c.Name,
                            imageLink = b.imageLink,
                            price = a.Price,
                            bedAmount = c.Bed_Amount,
                            adultAmount = c.Adult_Amount,
                            childAmount = c.Children_Amount,
                            size = c.Size
                        };

            return model.ToList();
        }

        public List<Promotion> ListPromotion()
        {
            return context.Promotions.Where(X => X.Id_Prom != null).ToList();
        }

        public ActionResult Index()
        {
            ViewBag.banners = new homeController().ListBanner();
            ViewBag.Rooms = new homeController().ListRoom();
            ViewBag.Promotions = new homeController().ListPromotion();
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
        //Loin
        public ActionResult Login()
        {
            return View();
        }
        public ActionResult DangKy()
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
