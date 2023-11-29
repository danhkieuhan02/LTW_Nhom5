using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom.Admin.pCategory
{
    public partial class EditCat : System.Web.UI.Page
    {
        CarShowroomDataContext db = new CarShowroomDataContext();
        public List<Category> listCat = new List<Category>();
        protected void Page_Load(object sender, EventArgs e)
        {
            // Trang update phải có điều kiện này
            if (!Page.IsPostBack)
            {
                //Lấy id sản phẩm ra ngoài 
                if (Request.QueryString["IdCat"] != "")
                {
                    long IdGet = Convert.ToInt64(Request.QueryString["IdCat"]);
                    LoadCat(IdGet);
                }
                else
                {
                    Response.Redirect("IndexCat.aspx");
                }
            }
        }

        public void LoadCat(long id)
        {
            var oldData = db.Categories.SingleOrDefault(c => c.Id == id);
            if (oldData == null)
            {
                Response.Redirect("IndexCat.aspx");
                return;
            }
            cName.Text = oldData.catName;

        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            long id = Convert.ToInt64(Request.QueryString["IdCat"]);
            var data = db.Categories.SingleOrDefault(c => c.Id == id);
            data.catName = cName.Text;

            db.SubmitChanges();
            Response.Redirect("IndexCat.aspx");
        }
    }
}