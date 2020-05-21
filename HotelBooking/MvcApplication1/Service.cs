namespace MvcApplication1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Service")]
    public partial class Service
    {
        [Key]
        [StringLength(8)]
        public string Id_Service { get; set; }

        [StringLength(20)]
        public string Name { get; set; }

        public bool? Active { get; set; }
    }
}
