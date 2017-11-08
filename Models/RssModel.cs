using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;

namespace Univibe_Web.Models
{
    public class RssModel
    {
        public string Title { set; get; }

        public string Link { set; get; }

        public string Description { set; get; }

        public string ImageUrl { set; get; }

        public DateTime PubDate { set; get; }
    }

    public class RssItems
    {
        public RssItems()
        {
            var rssFeed = XDocument.Load("https://www.dvfu.ru/news/rss/");
            XNamespace ns = rssFeed.Root.Name.Namespace;
            Items = new List<RssModel>();
            foreach (var item in rssFeed.Descendants(ns + "item"))
            {
                var ritem = new RssModel()
                {
                    Title = item?.Element(ns + "title").Value ?? "",
                    Link = item?.Element(ns + "link").Value ?? "",
                    Description = item?.Value ?? "",
                    ImageUrl = item?.Element(ns + "enclosure").Attribute("url").Value ?? "",
                    PubDate = Convert.ToDateTime((item?.Element(ns + "pubDate").Value))
                }; 
                ritem.Description = ritem.Description.Replace(ritem.Title, "").Replace(ritem.Link, "").Replace(ritem.ImageUrl, "");
                ritem.Description = ritem.Description.Replace(ritem.PubDate.ToString(), "").Replace(item?.Element(ns + "pubDate").Value, "");
                Items.Add(ritem);
            }
        }
        public List<RssModel> Items { set; get; }
    }
}