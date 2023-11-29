using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom.Admin.pProduct
{
    public partial class IndexProd : System.Web.UI.Page
    {
        public CarShowroomDataContext db = new CarShowroomDataContext();

        public List<Product> prodList = new List<Product>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                prodList = db.Products
                    .OrderByDescending(p => p.Id)
                    .ToList();

                // Gán data cho repeater
                repeaterProduct.DataSource = prodList;
                repeaterProduct.DataBind();
            }
        }

        protected void btnDel_Click(object sender, EventArgs e)
        {
            var btn = (LinkButton) sender;
            var id = Convert.ToInt32(btn.CommandArgument);

            var car = db.Products.SingleOrDefault(p => p.Id == id);
            if (car != null)
            {
                db.Products.DeleteOnSubmit(car);
                db.SubmitChanges();
                lblMesg.Text = "Xóa sản phẩm " + car.ProductName + " thành công";
            }
        }
    }
}