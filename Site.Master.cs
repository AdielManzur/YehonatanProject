using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelBook
{
    public partial class SiteMaster : MasterPage
    {
        dbEntities db = new dbEntities();     
        public bool userLogin;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

    }
}