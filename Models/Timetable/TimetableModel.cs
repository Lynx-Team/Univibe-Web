using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

namespace Univibe_Web.Models.Timetable
{
    public class LessonModel
    {
        [Key]
        public long Id { set; get; }

        public long Weekdays_Id { set; get; }

        public long Subject_Id { set; get; }

        public long Teacher_Id { set; get; }
        public long Lesson_Time_Id { set; get; }

        public long Classroom_Id { set; get; }
        public long Group_Id { set; get; }
    }

    
    public class TimetableDBContext: DbContext
    {
        public DbSet<SubjectModel> Subjects { set; get; }
        public DbSet<TeacherModel> Teachers { set; get; }

        public DbSet<LessonModel> Lessons { set; get; }

        public DbSet<GroupModel> Groups { set; get; }

        public DbSet<ClassroomModel> Classrooms { set; get; }
        
        public DbSet<LessonTimeModel> Lesson_Times { set; get; }

        public DbSet<WeekdayModel> Weekdays { set; get; }

        public TimetableDBContext() {}
        public TimetableDBContext(DbContextOptions<TimetableDBContext> options)
                    : base(options)
        {
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(Startup.DefaultConnectionString);
        }
    }
}