using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;

namespace Univibe_Web.Models.Timetable
{
    public class LessonTimeModel
    {
        [Key]
        public long Id { set; get; }

        public TimeSpan Start_Time { set; get; }

        public TimeSpan End_Time { set; get; }

        public int Numb { set; get; }
        public int Parity { set; get; }
    }
}