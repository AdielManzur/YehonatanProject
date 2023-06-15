using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace TravelBook
{
    public partial class _Default : Page
    {
        public dbEntities db = new dbEntities();
        public List<summaryTBL> summariesToShow = new List<summaryTBL>();
        protected void Page_Load(object sender, EventArgs e)
        {
            summariesToShow = db.summaryTBL.ToList();
        }

        

        protected void menuStrip_MenuItemClick(object sender, MenuEventArgs e)
        {
            summariesToShow = db.summaryTBL.ToList();
            List<summaryTBL> summariesToRemove = new List<summaryTBL>();
            if (e.Item.Text == "All")
            {
                return;
            }
            foreach (summaryTBL summaryToRemove in summariesToShow)
            {
                if (summaryToRemove.subject != e.Item.Text)
                {
                    summariesToRemove.Add(summaryToRemove);
                }

            }
            foreach (summaryTBL summaryToRemove in summariesToRemove)
            {
                summariesToShow.Remove(summaryToRemove);
            }
        }
    }

}
