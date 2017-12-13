using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Telerik.Sitefinity.Libraries.Model;

namespace SitefinityOpg.Extensions.ExtensionMethods
{
	public static class Images
	{

		/// <summary>
		/// Fix for bug where sitefinity adds a double slash and breaks the url.
		/// </summary>
		/// <param name="image"></param>
		/// <returns></returns>
		public static string GetCorrectMediaUrl(this Image image)
		{
			return image.Url.Replace("//Media", "/Media");

		}

	}
}
