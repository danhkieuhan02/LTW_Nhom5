using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom
{
    public partial class OrderDetails : System.Web.UI.UserControl
    {
        public CarShowroomDataContext db = new CarShowroomDataContext();
        public Order inforOrder = new Order();
        public Product inforCar = new Product();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["IdProd"] != "")
                {
                    int IdGet = Convert.ToInt32(Request.QueryString["IdProd"]);
                    LoadData(IdGet);
                }
                else
                {
                    Response.Redirect("Details.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("Details.aspx");
            }

        }
        void LoadData(int IdCarInput)
        {
            inforCar = (from q in db.Products
                       where q.Id == IdCarInput
                       select q).FirstOrDefault();
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            Order inforOrder = new Order();
            inforOrder.IdProd = inforCar.Id;
            inforOrder.CustomerName = TextCusName.Text;
            inforOrder.Phonenumber = TextPhoneNumber.Text;
            inforOrder.Address = TextAddress.Text;
        }

    }
}