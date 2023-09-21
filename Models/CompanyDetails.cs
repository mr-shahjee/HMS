using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace PracticeCrud.Models
{
    public class CompanyDetails
    {
        [Key]
           public int CompanyId { get; set; }
        public string CompanyName { get; set; }
        public string City { get; set; }
        public string State { get; set; }
         public string Owner { get; set; }
          public int PublishYear { get; set; }
    }
}