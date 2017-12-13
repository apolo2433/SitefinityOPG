using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Telerik.Sitefinity;
using Telerik.Sitefinity.GenericContent.Model;
using Telerik.Sitefinity.Model;
//using SitefinityOpg.Extensions.Models.Content.Events;
//using SitefinityOpg.Extensions.Utilities;

namespace SitefinityOpg.ExtensionMethods
{
    public static class Events
    {
    //    public static IEnumerable<Event> GetFutureEvents()
    //    {
    //        IEnumerable<Event> collection = App.WorkWith()
    //                        .Events()
				//			.Where(ev => ev.Status == ContentLifecycleStatus.Live && ev.EventStart >= DateTime.Today)
    //                        .Get()
    //                        .ToList()
				//			.Where(ev => !ev.IsDeleted)
    //                        .OrderBy(x => x.EventStart)
    //                        .Select(x => new Event
    //                        {
    //                            EventDate = x.EventStart,
    //                            ExternalLink =
    //                                (null != x.GetValue("ExternalLink") &&
    //                                 !String.IsNullOrEmpty(x.GetValue("ExternalLink").ToString())
    //                                    ? x.GetValue("ExternalLink").ToString()
    //                                    : ""),
    //                            Description = x.Description,
				//				IsOnline = x.GetValue<bool>("OnlineEvent"),
    //                            Venue =
    //                                (!String.IsNullOrEmpty(x.City) ? x.City.ToString() : "") +
    //                                (!String.IsNullOrEmpty(x.Street) ? x.Street.ToString() : "") +
    //                                (!String.IsNullOrEmpty(x.Country) ? x.Country.ToString() : "") +
    //                                (!String.IsNullOrEmpty(x.GetValue("Postcode").ToString())
    //                                    ? x.GetValue("Postcode").ToString()
    //                                    : ""),
    //                            EventTitle = x.Title, 
    //                            Id = x.Id.ToString()
    //                        });

    //        return collection;
    //    }

    //    public static IEnumerable<Event> GetPastEvents()
    //    {
    //        IEnumerable<Event> collection = App.WorkWith()
    //            .Events()
				//.Where(ev => ev.Status == ContentLifecycleStatus.Live && ev.EventStart < DateTime.Today)
    //            .Get()
    //            .ToList()
				//.Where(ev => !ev.IsDeleted)
    //            .OrderBy(x => x.EventStart)
    //            .Select(x => new Event
    //            {
    //                EventDate = x.EventStart,
    //                ExternalLink =
    //                    (null != x.GetValue("ExternalLink") &&
    //                     !String.IsNullOrEmpty(x.GetValue("ExternalLink").ToString())
    //                        ? x.GetValue("ExternalLink").ToString()
    //                        : ""),
    //                Description = x.Description,
				//	IsOnline = x.GetValue<bool>("OnlineEvent"),
    //                Venue =
    //                    (!String.IsNullOrEmpty(x.City) ? x.City.ToString() : "") +
    //                    (!String.IsNullOrEmpty(x.Street) ? x.Street.ToString() : "") +
    //                    (!String.IsNullOrEmpty(x.Country) ? x.Country.ToString() : "") +
    //                    (!String.IsNullOrEmpty(x.GetValue("Postcode").ToString())
    //                        ? x.GetValue("Postcode").ToString()
    //                        : ""),
    //                EventTitle = x.Title,
    //                Id = x.Id.ToString()

    //            });

    //        return collection;
    //    }
    }
}
