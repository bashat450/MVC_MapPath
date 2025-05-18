using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudMap.Models
{
    public class AllModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string ImagePath { get; set; } // For storing image file name/path


        [System.ComponentModel.DataAnnotations.Schema.NotMapped]
        public HttpPostedFileBase ImageFile { get; set; } // For file upload

    }
}