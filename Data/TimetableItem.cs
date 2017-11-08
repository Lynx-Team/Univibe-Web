using System;

namespace Univibe_Web.Data
{
    public class TimetableItem
    {
        public string Teacher { set; get; }

        public string Classroom { set; get; }

        public TimeSpan StartTime { set; get; }

        public TimeSpan EndTime { set; get; }

        public int Numb { set; get; }

        public int Parity { set; get; }

        public string Subject { set; get; }

        public string Weekday { set; get; }

    }
}