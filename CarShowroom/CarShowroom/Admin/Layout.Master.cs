﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom.Admin
{
	public partial class Layout : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (Session["Id"] == null)
            {
                Response.Redirect("../../Account/Login.aspx");
            }
		}
	}
}