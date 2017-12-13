using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SitefinityOpg.Attributes
{

	[AttributeUsage(AttributeTargets.Class)]
	public class DynamicContentType : Attribute
	{

		public string ContentType { get; set; }

		public DynamicContentType(string type)
		{
			ContentType = type;
		}

	}
}
