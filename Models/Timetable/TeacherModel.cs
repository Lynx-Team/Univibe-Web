using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;

namespace Univibe_Web.Models.Timetable
{
    public class TeacherModel
    {
        [Key]
        public long Id { set; get; }

        public string Teacher_Name { set; get; }
    }
}