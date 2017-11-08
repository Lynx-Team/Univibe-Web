using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;

namespace Univibe_Web.Models.Timetable
{
    public class ClassroomModel
    {
        [Key]
        public long Id { set; get; }

        public string Classroom_Name { set; get; }
    }
}