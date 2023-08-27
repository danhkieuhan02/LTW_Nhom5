using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom.Admin
{
	public partial class Category_Create : System.Web.UI.Page
	{
		
		protected void Page_Load(object sender, EventArgs e)
		{
			
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			var x = TenDanhMuc.Text;

			// Thành công
			Session["_success"] = "THành công rồi";
		}
	}
}