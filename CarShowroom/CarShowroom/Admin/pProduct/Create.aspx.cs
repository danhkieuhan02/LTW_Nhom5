using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom.Admin.pProduct
{
    public partial class Create : System.Web.UI.Page
    {
        CarShowroomDataContext db = new CarShowroomDataContext();
        // public static List<Category> catList = new List<Category>();
        protected void Page_Load(object sender, EventArgs e)
        {
            var data = db.Categories
                            .OrderBy(c => c.Id)
                            .ToList();
            pCatId.DataSource = data;
            pCatId.DataTextField = "catName";
            pCatId.DataValueField = "Id";
            pCatId.DataBind();
        }

        //
        protected void pCreate_Click(object sender, EventArgs e)
        {
            var p = new Product();
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
            db.Products.InsertOnSubmit(p);
            db.SubmitChanges();
        }
    }
}