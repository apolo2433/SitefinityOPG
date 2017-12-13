using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace SitefinityOpg.ExtensionMethods
{
	public static class Directories
	{
		public static void Empty(this DirectoryInfo directory)
		{
			foreach (FileInfo file in directory.GetFiles())
				file.Delete();

			foreach (DirectoryInfo subDirectory in directory.GetDirectories()) 
				subDirectory.Delete(true);
		}
	}
}
