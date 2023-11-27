using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom.Account
{
    public partial class Register : System.Web.UI.Page
    {
        public CarShowroomDataContext db = new CarShowroomDataContext();
        public User users = new User();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
            var u = new User();
            u.Name = uName.Text;
            u.Password = Common.CreateMD5(uPassword.Text);
            u.Email = uEmail.Text;

            var exists = db.Users.Any(x => x.Email == u.Email || x.Name == u.Name);
            if (exists)
            {
                ModelState.AddModelError("", "Tên đăng nhập hoặc email đã tồn tại!");
                Response.Redirect("Register.aspx");
            }

        }
    }
}