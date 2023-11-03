using Microsoft.Extensions.DependencyInjection;
using System;

namespace ExamWebApp.Utils
{
    public class IOC
    {
        public static System.IServiceProvider CurrentProvider { get; internal set; }

        public static object resolve(Type serviceType)
        {
            return CurrentProvider.GetService(serviceType);
        }
    }
}
