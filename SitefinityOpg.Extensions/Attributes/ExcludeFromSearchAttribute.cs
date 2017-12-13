using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http.Controllers;
using System.Web.Http.Filters;
using System.Web.Mvc;

namespace SitefinityOpg.Attributes
{
    public class ExcludeFromSearchAttribute : ActionFilterAttribute
    {
        //public override void OnActionExecuting(HttpActionContext filterContext)
        //{
        //    if (IsSearchMode(filterContext))
        //        filterContext.Response = new EmptyResult();
        //    else
        //        base.OnActionExecuting(filterContext);
        //}

        //private bool IsSearchMode(HttpActionContext filterContext)
        //{
        //    object isInDessignMode = filterContext.HttpContext.Items[Telerik.Sitefinity.Services.SystemManager.PageDesignModeKey];
        //    if (isInDessignMode != null && (bool)isInDessignMode == true)
        //        return false;
            
        //    if (filterContext.ControllerContext.CurrentHandler == null)
        //        return true;

        //    var page = filterContext.HttpContext.CurrentHandler as System.Web.UI.Page;

        //    if (page != null && page.Items["IsInIndexMode"] == null)
        //        return false;

        //    var mvcHandler = filterContext.HttpContext.CurrentHandler as MvcHandler;
        //    if (mvcHandler != null)
        //        return false;

            
        //    // we have tried all other valid appraoches, so we can now say that this is a system request
        //    return true;
        //}
    }
}