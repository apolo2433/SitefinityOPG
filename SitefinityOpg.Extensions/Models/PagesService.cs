using System.Collections.Generic;
using System.Linq;
using Telerik.Sitefinity;
using Telerik.Sitefinity.GenericContent.Model;
using Telerik.Sitefinity.Modules.Pages;
using Telerik.Sitefinity.Pages.Model;
using Telerik.Sitefinity.Services;

namespace SitefinityOpg.Extensions.Models
{
    public class PagesHelper
    {
        public static IList<PageNode> GetNavigationItems(PageNode parent)
        {
            if (parent != null)
            {
                var pages = App.WorkWith().Pages().Where(p => p.ParentId == parent.Id && p.GetPageData().Status == ContentLifecycleStatus.Live).Get().ToList();
                return pages;
            }
            return new List<PageNode>();
        }

        public static PageNode HomePage => PageManager.GetManager().GetPageNodes()
                .Where(pNode => pNode.Id == SystemManager.CurrentContext.CurrentSite.HomePageId)
                .FirstOrDefault();


    }
}