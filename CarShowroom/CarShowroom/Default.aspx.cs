using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom
{
    public partial class _Default : Page
    {
        public static CarShowroomDataContext _context = new CarShowroomDataContext();
        public static List<Product> ListProduct = new List<Product>();
        public List<Category> Cat;
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadProduct();
            LoadCat();
        }

        void LoadCat()
        {
            //load danh muc tren thanh search
            var _db = new CarShowroomDataContext();
            Cat = _db.Categories
                     .OrderBy(c => c.catName.Length)
                     .ToList();
        }
        void LoadProduct()
        {
            //load san pham len trang chu, chuyen huong sang trang chi tiet
            var products = from p in _context.Products
                           select p;


            ListProduct = products.ToList();
        }
    }
}