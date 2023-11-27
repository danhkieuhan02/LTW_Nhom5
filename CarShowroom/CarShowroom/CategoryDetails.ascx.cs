using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom
{
    public partial class CategoryDetails : System.Web.UI.UserControl
    {
        public CarShowroomDataContext db = new CarShowroomDataContext();
        public List<Product> listProd = new List<Product>();
        public Category inforCat = new Category();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["IdCat"] != "")
                {
                    long IdGet = Convert.ToInt64(Request.QueryString["IdCat"]);
                    LoadCate(IdGet);
                    LoadProd(IdGet);
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

        //load va hien thi danh muc
        public void LoadCate(long IdCatInput)
        {
            var data = from q in db.Categories
                       where q.Id == IdCatInput
                       select q;

            if (data != null && data.Count() > 0)
            {
                inforCat = data.First();
            }
        }

        //load va hien thi san pham
        public void LoadProd(long IdCatInput)
        {
            var data = from q in db.Products
                       where q.CategoryId == IdCatInput
                       select q;

            if (data != null && data.Count() > 0)
            {
                listProd = data.ToList();
            }
        }
    }
}