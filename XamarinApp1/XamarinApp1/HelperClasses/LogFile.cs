using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace XamarinApp1.HelperClasses
{
  class LogFile
  {
    public static void WriteLogFile(Exception e)
    {
      string path;
      path = System.IO.Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), "XamLogFile");
      if (!File.Exists(path))
      {
        File.Create(path).Dispose();
      }
      using (StreamWriter logwriter = new StreamWriter(path, true))
      {
        logwriter.WriteLine("Date/Time: " + DateTime.Now.ToString());
        logwriter.WriteLine();

        while (e != null)
        {
          logwriter.WriteLine(e.GetType().FullName);
          logwriter.WriteLine("Message : " + e.Message);
          logwriter.WriteLine("StackTrace : " + e.StackTrace);
          e = e.InnerException;
          logwriter.WriteLine("------------------------------------------");
        }
      }
    }
  }
}
