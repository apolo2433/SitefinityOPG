using Telerik.Sitefinity.Model;
using Telerik.Sitefinity.Pages.Model;

namespace SitefinityOpg.Extensions.ExtensionMethods
{
    public static class PageNodeExtension
    {
        public static bool IsCaseStudy(this PageNode page)
        {
			// Fix for SF Revision History system
			if (page == null) return false;

            var contentType = page.GetValue("PageContentType");
            return contentType != null && contentType.ToString() == "Case Study";   
        }

        public static bool ShowSecondaryNav(this PageNode page)
        {
			// Fix for SF Revision History system - page != null
	        return page != null && page.GetValue<bool>("ShowSecondaryNav");
        }
    }
}
