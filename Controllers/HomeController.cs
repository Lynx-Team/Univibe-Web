using System.Diagnostics;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Univibe_Web.Models;
using Microsoft.EntityFrameworkCore;
using Univibe_Web.Models.Timetable;
using System.Collections.Generic;
using Univibe_Web.Data;

namespace Univibe_Web.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            ViewBag.Rss = (new RssItems()).Items;
            return View();
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }
        
        public IActionResult Timetable(string groupName = "Б8303а")
        {
            using (var db = new TimetableDBContext())
            {
                var list =  (from tt in db.Lessons 
                join cr in db.Classrooms on tt.Classroom_Id equals cr.Id 
                join wd in db.Weekdays on tt.Weekdays_Id equals wd.Id
                join lt in db.Lesson_Times on tt.Lesson_Time_Id equals lt.Id
                join s in db.Subjects on tt.Subject_Id equals s.Id
                join t in db.Teachers on tt.Teacher_Id equals t.Id
                join g in db.Groups on tt.Group_Id equals g.Id
                where g.Group_Name == groupName
                orderby wd.Id
                select new TimetableItem(){Classroom = cr.Classroom_Name, Weekday = wd.Weekday_Name, StartTime = lt.Start_Time, EndTime = lt.End_Time,
                    Numb = lt.Numb, Subject = s.Subject_Name, Teacher = t.Teacher_Name, Parity = lt.Parity})
                    .ToList();
                var weekdaysRowSpan = new Dictionary<string, int>();
                foreach (var item in list)
                {
                    if (!weekdaysRowSpan.ContainsKey(item.Weekday)) weekdaysRowSpan[item.Weekday] = 0;
                    weekdaysRowSpan[item.Weekday] += item.Parity == 2 ? 1 : 2;
                }
                    
                ViewBag.Timetable = list;
                ViewBag.WeekdaysRowSpan = weekdaysRowSpan;
            }
            return View();
        }
        public IActionResult News()
        {
            ViewBag.Rss = (new RssItems()).Items;
            return View();
        }
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
