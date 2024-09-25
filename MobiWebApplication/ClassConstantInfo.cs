using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MobiWebApplication
{
    class ClassConstantInfo
    {
        public static string userNames;
        public static string UserName;
        public static string ConStr;

        public static string ReturnUserActualNames
        {
            set { userNames = value; }
            get { return userNames; }
        }
        public static string ReturnUserLogingName
        {
            set { UserName = value; }
            get { return UserName; }
        }
    }
}
