using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom.Admin.pProduct
{
    public partial class Edit : System.Web.UI.Page
    {
        CarShowroomDataContext db = new CarShowroomDataContext();
        public static List<Product> pList = new List<Product>();
        protected void Page_Load(object sender, EventArgs e)
        {
            // Trang update phải có điều kiện này
            if (!Page.IsPostBack)
            {
                //Lấy id sản phẩm ra ngoài 
                if (Request.QueryString["IdProd"] != "")
                {
                    long IdGet = Convert.ToInt64(Request.QueryString["IdProd"]);
                    LoadCar(IdGet);
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
            }
        }
        public void LoadCar(long id)
        {

            var oldData = db.Products.SingleOrDefault(p => p.Id == id);

            pName.Text = oldData.ProductName;
            pPrice.Text = oldData.Price.ToString();
            pContent.Text = oldData.Content;

            //Cho phép chỉnh sửa danh mục
            var data = db.Categories
                          .OrderBy(c => c.Id)
                          .ToList();
            pCatId.DataSource = data;
            pCatId.DataTextField = "catName";
            pCatId.DataValueField = "Id";
            pCatId.DataBind();

            pCatId.SelectedValue = oldData.CategoryId.ToString();
        }
        public static void UpdateCar()
        {

        }

        protected void pCreate_Click(object sender, EventArgs e)
        {
            long id = Convert.ToInt64(Request.QueryString["IdProd"]);
            var p = db.Products.SingleOrDefault(x => x.Id == id);
            p.ProductName = pName.Text;
            p.Price = Convert.ToDecimal(pPrice.Text);
            p.Content = pContent.Text;
            p.CategoryId = Convert.ToInt32(pCatId.SelectedValue);

            if (pCoverImg.HasFile)
            {
                // upload file
                var filename = Server.MapPath("/Upload/" + pCoverImg.FileName);
                pCoverImg.SaveAs(filename);
                p.CoverImg = "/Upload/" + pCoverImg.FileName;
            }
            db.SubmitChanges();
            Response.Redirect("IndexProd.aspx");
        }
    }
}