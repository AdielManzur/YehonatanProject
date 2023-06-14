using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace TravelBook
{
    public partial class AddPostPage : System.Web.UI.Page
    {
        dbEntities db = new dbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnClick(object sender, EventArgs e)
        {
            summeryTBL tbl = new summeryTBL();
            tbl.subject = subjectDropdown.SelectedValue.Trim();
            tbl.text = content.Text;
            tbl.title = title.Text;
            userTBL thisUser = new userTBL();
            foreach(userTBL user in db.userTBL)
            {
                if(user.Id == (int)HttpContext.Current.Session["UserId"])
                {
                    thisUser = user;
                }
            } 
            tbl.author = thisUser.username;
            db.summeryTBL.Add(tbl);
            db.SaveChanges();
            content.Text = "";
            title.Text = "";
            subjectDropdown.SelectedIndex = -1;
            MessageBox.Show("Your summery Added");
        }

    }
}