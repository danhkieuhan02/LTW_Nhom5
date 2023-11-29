using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom
{
    public partial class Search : System.Web.UI.Page
    {
        public CarShowroomDataContext db = new CarShowroomDataContext();
        public List<Product> ListProduct;

        protected void Page_Load(object sender, EventArgs e)
        {
            var keyword = Request.QueryString["keyword"];
            int? categoryId = null;
            if (String.IsNullOrEmpty(Request.QueryString["cateId"]) == false)
            {
                categoryId = Convert.ToInt32(Request.QueryString["cateId"]);
            }

            // Tìm dựa vào tên sản phẩm
            var query = db.Products.Where(p => keyword != null && p.ProductName.Contains(keyword));

            // Nếu có CategoryId thì tìm theo CategoryId
            if (categoryId.HasValue)
            {
                query = query.Where(p => p.CategoryId == categoryId);
            }
            ListProduct = query.OrderByDescending(p => p.Id).ToList();
        }
    }
}