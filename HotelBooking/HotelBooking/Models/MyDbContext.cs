namespace HotelBooking.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class MyDbContext : DbContext
    {
        public MyDbContext()
            : base("name=MyDbContext")
        {
        }

        public virtual DbSet<banner> banners { get; set; }
        public virtual DbSet<Booking> Bookings { get; set; }
        public virtual DbSet<BookingDetail> BookingDetails { get; set; }
        public virtual DbSet<Contact> Contacts { get; set; }
        public virtual DbSet<Gallery> Galleries { get; set; }
        public virtual DbSet<ImageRoom> ImageRooms { get; set; }
        public virtual DbSet<ImageService> ImageServices { get; set; }
        public virtual DbSet<Promotion> Promotions { get; set; }
        public virtual DbSet<Room> Rooms { get; set; }
        public virtual DbSet<RoomType> RoomTypes { get; set; }
        public virtual DbSet<Service> Services { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<User> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<banner>()
                .Property(e => e.Id_banner)
                .IsUnicode(false);

            modelBuilder.Entity<banner>()
                .Property(e => e.imageLink)
                .IsUnicode(false);

            modelBuilder.Entity<Booking>()
                .Property(e => e.Id_Booking)
                .IsUnicode(false);

            modelBuilder.Entity<Booking>()
                .Property(e => e.Id_Customer)
                .IsUnicode(false);

            modelBuilder.Entity<BookingDetail>()
                .Property(e => e.Id)
                .IsUnicode(false);

            modelBuilder.Entity<BookingDetail>()
                .Property(e => e.Adult_Amount)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<BookingDetail>()
                .Property(e => e.Children_Amount)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<BookingDetail>()
                .Property(e => e.Id_Room)
                .IsUnicode(false);

            modelBuilder.Entity<BookingDetail>()
                .Property(e => e.Id_Booking)
                .IsUnicode(false);

            modelBuilder.Entity<Contact>()
                .Property(e => e.Id_Contact)
                .IsUnicode(false);

            modelBuilder.Entity<Contact>()
                .Property(e => e.Id_Customer)
                .IsUnicode(false);

            modelBuilder.Entity<Gallery>()
                .Property(e => e.Id_Glr)
                .IsUnicode(false);

            modelBuilder.Entity<Gallery>()
                .Property(e => e.ImageLink)
                .IsUnicode(false);

            modelBuilder.Entity<ImageRoom>()
                .Property(e => e.Id_image)
                .IsUnicode(false);

            modelBuilder.Entity<ImageRoom>()
                .Property(e => e.imageLink)
                .IsUnicode(false);

            modelBuilder.Entity<ImageRoom>()
                .Property(e => e.Id_Room)
                .IsUnicode(false);

            modelBuilder.Entity<ImageService>()
                .Property(e => e.Id_image)
                .IsUnicode(false);

            modelBuilder.Entity<ImageService>()
                .Property(e => e.imageLink)
                .IsUnicode(false);

            modelBuilder.Entity<ImageService>()
                .Property(e => e.Id_Service)
                .IsUnicode(false);

            modelBuilder.Entity<Promotion>()
                .Property(e => e.Id_Prom)
                .IsUnicode(false);

            modelBuilder.Entity<Promotion>()
                .Property(e => e.ImageLink)
                .IsUnicode(false);

            modelBuilder.Entity<Room>()
                .Property(e => e.Id_Room)
                .IsUnicode(false);

            modelBuilder.Entity<Room>()
                .Property(e => e.Id_Type)
                .IsUnicode(false);

            modelBuilder.Entity<RoomType>()
                .Property(e => e.Id_Type)
                .IsUnicode(false);

            modelBuilder.Entity<RoomType>()
                .Property(e => e.Bed_Amount)
                .IsUnicode(false);

            modelBuilder.Entity<RoomType>()
                .Property(e => e.Adult_Amount)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<RoomType>()
                .Property(e => e.Children_Amount)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Service>()
                .Property(e => e.Id_Service)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Id_User)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.UserName)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.PassWord)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Phone)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.ImageLink)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .HasMany(e => e.Bookings)
                .WithOptional(e => e.User)
                .HasForeignKey(e => e.Id_Customer);

            modelBuilder.Entity<User>()
                .HasMany(e => e.Contacts)
                .WithOptional(e => e.User)
                .HasForeignKey(e => e.Id_Customer);
        }
    }
}
