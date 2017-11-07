using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Univibe_Web.Models;
using System.Xml.Linq;
using System.Text.RegularExpressions;

namespace Univibe_Web.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
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
        
        
        public IActionResult News()
        {
            var rssFeed = XDocument.Load("https://www.dvfu.ru/news/rss/");
            XNamespace ns = rssFeed.Root.Name.Namespace;
            var rssFeedOut= from item in rssFeed.Descendants(ns + "item")
            select new RssModel
            {
                Title = item?.Element(ns + "title").Value ?? "",
                Link = item?.Element(ns + "link").Value ?? "",
                Description = item?.Value ?? ""
            };
            ViewBag.Rss = rssFeedOut.ToList();
            
            return View();
        }
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
