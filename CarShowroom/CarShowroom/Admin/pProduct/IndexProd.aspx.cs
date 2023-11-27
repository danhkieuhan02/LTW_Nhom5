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

        public static List<Product> prodList = new List<Product>();
        protected void Page_Load(object sender, EventArgs e)
        {
            prodList= db.Products
                .OrderByDescending(p => p.Id)
                .ToList(); 

            //Lấy file ảnh 
        }
    }
}