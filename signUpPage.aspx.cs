using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace TravelBook
{
    public partial class signUpPage : System.Web.UI.Page
    {
        dbEntities db = new dbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void signUp_Click(object sender, EventArgs e)
        {
            string userName = firstNameTxb.Text.Trim();
            userTBL user = (from s in db.userTBL where s.username == userName select s).FirstOrDefault();
            if (user != null)
            {// error duplicated username
                MessageBox.Show("user already exist");
            }
            else if(passwordTxb.Text.Trim() == confirmPasswordTxb.Text.Trim())

            {
                userTBL newUser = new userTBL();
                newUser.Email = emailTxb.Text.Trim();
                newUser.FirstName = firstNameTxb.Text.Trim();
                newUser.LastName = lastNameTxb.Text.Trim();
                newUser.Password = passwordTxb.Text.Trim();
                newUser.username = userNameTxb.Text.Trim();
                newUser.regDate = DateTime.Now;
                user.isLogined = true;
                db.userTBL.Add(newUser);
                db.SaveChanges();
                MessageBox.Show("registration completed");
                //main.userLogin = true;
                //need to return to home page/feed

            }
            else if(passwordTxb.Text.Trim() != confirmPasswordTxb.Text.Trim())
            {
                MessageBox.Show("Passwords text boxes are not matching");
            }

        }
    }
}