using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SitefinityOpg.ExtensionMethods
{
	public static class Conversion
	{

		/// <summary>
		/// Doues safe convertion for use in LINQ
		/// </summary>
		/// <param name="item"></param>
		/// <returns></returns>
		public static double? TryGetDouble(this string item)
		{
			double i;
			bool success = Double.TryParse(item, out i);
			return success ? (double?)i : (double?)null;
		}

		public static Guid TryGetGuid(this string item)
		{
			Guid i;
			bool success = Guid.TryParse(item, out i);
			return i;
		}

		public static DateTime TryGetDateTime(this string item)
		{
			DateTime i;
			bool success = DateTime.TryParse(item, out i);
			return i;
		}

	}
}
