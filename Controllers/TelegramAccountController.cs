using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Univibe_Web.Models;
using Univibe_Web.Models.AccountViewModels;
using Univibe_Web.Services;
using Univibe_Web.Data;

namespace Univibe_Web.Controllers
{
    [Route("[controller]/[action]")]
    public class TelegramAccountController : Controller
    {
        ApplicationDbContext context;

        public TelegramAccountController(ApplicationDbContext _context)
        {
            context = _context;
        }

        [HttpGet("{TelegramID}")]
        public string RegisterTelegram(string telegramID)
        {
            var user = new TelegramUser {TelegramID = telegramID};
            var result = context.TelegramUsers.Add(user);
            context.SaveChanges();

            return "true";
        }

        [HttpGet("{UserTelegramID}")]
        public string GetSubscribers(string UserTelegramID)
        {
            var user = context.TelegramUsers.Where(x => x.TelegramID == UserTelegramID).SingleOrDefault();

            if (user == null)
                return "";

            return user.Subscribers;
        }

        [HttpGet("{UserTelegramId}")]
        public string GetSubscriptions(string UserTelegramId)
        {
            var user = context.TelegramUsers.Where(x => x.TelegramID == UserTelegramId).SingleOrDefault();

            if (user == null)
                return "";

            return user.Subscriptions;
        }

        [HttpGet("{UserTelegramID}/{str}")]
        public void SetSubscribers(string UserTelegramID, string str)
        {
            var user = context.TelegramUsers.Where(x => x.TelegramID == UserTelegramID).SingleOrDefault();

            if (user == null)
                return;

            user.Subscribers = str;
            context.SaveChanges();
        }

        [HttpGet("{UserTelegramID}/{str}")]
        public void SetSubscriptions(string UserTelegramID, string str)
        {
            var user = context.TelegramUsers.Where(x => x.TelegramID == UserTelegramID).SingleOrDefault();

            if (user == null)
                return;

            user.Subscriptions = str;
            context.SaveChanges();
        }

        [HttpGet("{UserTelegramID}/{Group}")]
        public void SetGroup(string UserTelegramID, string Group)
        {
            var user = context.TelegramUsers.Where(x => x.TelegramID == UserTelegramID).SingleOrDefault();

            if (user == null)
                return;

            user.Group = Group;
            context.SaveChanges();
        }

        [HttpGet("{UserTelegramID}")]
        public string GetGroup(string UserTelegramID)
        {
            var user = context.TelegramUsers.Where(x => x.TelegramID == UserTelegramID).SingleOrDefault();

            if (user == null)
                return "";

            return user.Group;
        }

        [HttpGet("{UserTelegramID}/{FIO}")]
        public void SetFIO(string UserTelegramID, string FIO)
        {
            var user = context.TelegramUsers.Where(x => x.TelegramID == UserTelegramID).SingleOrDefault();

            if (user == null)
                return;

            user.FIO = FIO;
            context.SaveChanges();
        }

        [HttpGet("{UserTelegramID}")]
        public string GetFIO(string UserTelegramID)
        {
            var user = context.TelegramUsers.Where(x => x.TelegramID == UserTelegramID).SingleOrDefault();

            if (user == null)
                return "";

            return user.FIO;
        }
    }
}