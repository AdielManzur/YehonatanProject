using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace TravelBook
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        dbEntities db = new dbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["UserId"] != null)
            {
                Response.Redirect("~/Feed");
            }
        }


        protected void signIn_Click(object sender, EventArgs e)
        {
            userTBL user = (from s in db.userTBL where s.username == usernameTxb.Text.Trim() select s).FirstOrDefault();
            if(user == null)
            {
                MessageBox.Show("user is not exist");
            }
            else
            {
                if(user.Password == passwordTxb.Text.Trim())
                {
                    HttpContext.Current.Session["UserId"] = user.Id;
                    Response.Redirect("~/Feed");
                }
            }
        }
    }
}