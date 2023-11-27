using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom
{
    public partial class DetailsProduct : System.Web.UI.Page
    {
        public static CarShowroomDataContext db = new CarShowroomDataContext();
        public static Product inforCar = new Product();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["IdProd"] != "")
                {
                    long IdGet = Convert.ToInt64(Request.QueryString["IdProd"]);
                    LoadData(IdGet);
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("Default.aspx");
            }

        }
        void LoadData(long IdCarInput)
        {
            var data = from q in db.Products
                       where q.Id == IdCarInput
                       select q;

            if (data != null && data.Count() > 0)
            {
                inforCar = data.First();
            }
        }
    }
}
