using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HotelBooking.Common;
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
                            size = c.Size,
                            url = c.Note,
                        };

            return model.ToList();
        }

        public List<Promotion> ListPromotion()
        {
            return context.Promotions.Where(X => X.Id_Prom != null).ToList();
        }
        public List<Introduce> ListIntro()
        {
            return context.Introduces.Where(X => X.Id != null).ToList();
        }
        public List<Gallery> ListGall()
        {
            return context.Galleries.Where(X => X.Id_Glr != null).ToList();
        }
        public List<ServiceViewModel> ListService()
        {
            var model = from services in context.Services

                        join service_type in context.ServiceTypes on services.ID_Type equals service_type.ID_Type
                        select new ServiceViewModel()
                        {
                            name_type = service_type.Name,
                            content_Service = service_type.Content_Service,
                            name = services.Name,
                            image_services = services.Image_service
                        };
            return model.ToList();
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
            ViewBag.Service = new homeController().ListService();

            return View();
        }

        public ActionResult dvNhaHang()
        {
            var model = new MyDbContext().ImageServices.Where(X => X.Id_Service == "MDV04");

            return View(model);
        }

        public ActionResult dvHoBoi()
        {
            var model = new MyDbContext().ImageServices.Where(X => X.Id_Service == "MDV03");

            return View(model);
        }
        
        public ActionResult dvSpa()
        {
            var model = new MyDbContext().ImageServices.Where(X => X.Id_Service == "MDV01");

            return View(model);
        }

        public ActionResult dvGym()
        {
            var model = new MyDbContext().ImageServices.Where(X => X.Id_Service == "MDV02").ToList();

            return View(model);
        }
        //---------------------------------------------
        public ActionResult KhuyenMai()
        {
            ViewBag.promotions = new homeController().ListPromotion();
            return View();
        }
        public ActionResult LienHe()
        {
           //aseController base = new BaseController();
            
            return View();
        }
        //-----------------------
        /*
         Giao diện của vũ đức thắng
         */
        public ActionResult LoaiPhong()
        {
            ViewBag.Rooms = new homeController().ListRoom();
            return View();
        }
        public ActionResult DatPhong()
        {

            return View();
        }
        //----------------sơn
        public ActionResult GioiThieu()
        {
            ViewBag.Introduces= new homeController().ListIntro();
            
            return View();
        }

        public ActionResult Gallery()
        {
            ViewBag.Gallerys = new homeController().ListGall();
            return View();
        }
        //===============================================================
        //Loin
        public ActionResult Login()
        {
            return View();
        }
        public ActionResult LoginUser(LoginModel model)
        {
           if(ModelState.IsValid)
           {   
            var dao = new UserDao();
            var result = dao.Login(model.UserName, model.Password);
            if(result)
            {
                    var user = dao.GetID(model.UserName);
                    var session = new SessionLogin();
                    session.UserName = user.UserName;
                    session.UserID = user.Id_User;
                    Session.Add(UserSession.SessionU,session);
             
                    return RedirectToAction("Index", "home");
            }   
            else
            {
                ModelState.AddModelError("", "Đăng nhập sai .");
            }    
           }  
            return View("Login");
        }
        [HttpGet]
        public ActionResult DangKy()
        {
            return View();
        }

        [HttpPost]
        public ActionResult DangKy(User taiKhoan)
        {
            if(ModelState.IsValid)
            {
                var dao = new UserDao();
                var id = dao.Insert(taiKhoan);
                if(id != null )
                {
                    return RedirectToAction("Login", "Home");

                }    
            } 
            else
            {
                ModelState.AddModelError("", "Thất Bại hãy đăng ký lại !!");
            }    
         
            return View("Login");
        }

        //========================== Chi tiết phòng
        public ActionResult Luxury()
        {
            return View();
        }
        public ActionResult deluxe()
        {
            return View();
        }
        public ActionResult Superior()
        {
            return View();
        }
        public ActionResult Suite()
        {
            return View();
        }


        //
        // GET: /home/Details/5
        //==============================================================
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
