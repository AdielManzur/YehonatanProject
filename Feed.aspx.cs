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
        public List<summeryTBL> summariesToShow = new List<summeryTBL>();
        protected void Page_Load(object sender, EventArgs e)
        {
            summariesToShow = db.summeryTBL.ToList();
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            summariesToShow = db.summeryTBL.ToList();
            List<summeryTBL> summariesToRemove = new List<summeryTBL>();
            if(e.Item.Text == "All")
            {
                return;
            }
            foreach(summeryTBL summaryToRemove in summariesToShow)
            {
                if(summaryToRemove.subject != e.Item.Text)
                {
                    summariesToRemove.Add(summaryToRemove);
                }
                
            }
            foreach(summeryTBL summaryToRemove in summariesToRemove)
            {
                summariesToShow.Remove(summaryToRemove);
            }
        }
    }

}
