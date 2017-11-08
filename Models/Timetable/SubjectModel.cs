using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;

namespace Univibe_Web.Models.Timetable
{
    public class SubjectModel
    {
        [Key]
        public long Id { set; get; }

        public string Subject_Name { set; get; }
    }
}