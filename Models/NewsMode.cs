using System;

namespace Univibe_Web.Models
{
    public class NewsItem
    {
        public long Id { set; get; }
        public string Title { set; get; }
        public string Content { set; get; }
        public string Image { set; get; }
        public DateTime CreateTime { set; get; }
    }
}