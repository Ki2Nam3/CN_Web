namespace MvcApplication1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Contact")]
    public partial class Contact
    {
        [Key]
        [StringLength(8)]
        public string Id_Contact { get; set; }

        public string Content { get; set; }

        [StringLength(8)]
        public string Id_Customer { get; set; }

        public virtual User User { get; set; }
    }
}
