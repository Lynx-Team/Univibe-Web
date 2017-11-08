using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Newtonsoft.Json.Linq;

namespace Univibe_Web.Models
{
    // Add profile data for application users by adding properties to the ApplicationUser class
    public class TelegramUser
    {
        [Key]
        public string TelegramID { get; set; }
        public string Subscribers { get; set; }
        public string Subscriptions { get; set; }
    }
}