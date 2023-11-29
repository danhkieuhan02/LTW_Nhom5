using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom.Admin.pCategory
{
    public partial class IndexCat : System.Web.UI.Page
    {
        public CarShowroomDataContext db = new CarShowroomDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var listCate = db.Categories
             .OrderByDescending(c => c.Id)
             .ToList();

            //Gán dữ liệu cho repeater
            repeaterCategory.DataSource = listCate;
            repeaterCategory.DataBind();

            lblSuccess.Text = Request.QueryString["msg"];

        }

        protected void btnDel_Click(object sender, EventArgs e)
        {
            var btn = (LinkButton)sender;
            var id = Convert.ToInt32(btn.CommandArgument);

            var cate = db.Categories.SingleOrDefault(c => c.Id == id);
            var mesg = "";
            if (cate != null)
            {
                if (cate.Products.Count > 0)
                {
                    mesg = "Danh mục này đã có sản phẩm, không thể xóa.";
                }
                else
                {
                    db.Categories.DeleteOnSubmit(cate);
                    db.SubmitChanges();
                    mesg = "Xóa danh mục " + cate.catName + " thành công.";
                }
            }
            Response.Redirect("IndexCat.aspx?msg=" + mesg);
        }
    }
}