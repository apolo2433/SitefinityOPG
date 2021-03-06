using System;
using System.ComponentModel;
using System.Linq;
using System.Web.Mvc;
using Telerik.Sitefinity.Mvc;
using SitefinityOpg.Web.Mvc.Models;

namespace SitefinityOpg.Web.Mvc.Controllers
{
    [ControllerToolboxItem(Name = "Footer", Title = "Footer", SectionName = "MvcWidgets")]
    public class FooterController : Controller
    {
        /// <summary>
        /// Gets or sets the message.
        /// </summary>
        [Category("String Properties")]
        public string Message { get; set; }

        /// <summary>
        /// This is the default Action.
        /// </summary>
        public ActionResult Index()
        {
            var model = new FooterModel();
            if (string.IsNullOrEmpty(this.Message))
            {
                model.Message = "Hello, World!";
            }
            else
            {
                model.Message = this.Message;
            }

            return View("Default", model);
        }
    }
}