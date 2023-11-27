using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom.Account
{
    public partial class Login : System.Web.UI.Page
    {

        public CarShowroomDataContext db = new CarShowroomDataContext();
        public User users = new User();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var u = db.Users
                .Where(x => x.Name == uName.Text)
                .SingleOrDefault();
            if (u != null)
            {
                if (u.Password == Common.CreateMD5(uPassword.Text))
                {
                    Session["Username"] = u.Name;
                    Session["Id"] = u.Id;
                    Response.Redirect("../Default.aspx");
                }
                else
                {
                    lblErrors.Text = "Lỗi! Sai mật khẩu.";
                }
            }
            else
            {

                lblErrors.Text = "Tên đăng nhập hoặc mật khẩu không hợp lệ!";
            }
        }
    }
}