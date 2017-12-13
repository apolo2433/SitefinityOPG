using SitefinityOpg.Extensions.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using Telerik.Sitefinity.Pages.Model;

namespace SitefinityOpg.Web.Mvc.Models
{
    public class HeaderModel
    {
        /// <summary>
        /// Gets or sets the message.
        /// </summary>
        public string Message { get; set; }

        public IList<PageNode> SecondLevelPages = PagesHelper.GetNavigationItems(PagesHelper.HomePage);
    }
}