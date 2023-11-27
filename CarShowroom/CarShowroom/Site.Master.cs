using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom
{
    public partial class SiteMaster : MasterPage
    {
        public List<Category> Cat;
        protected void Page_Load(object sender, EventArgs e)
        {
            var _db = new CarShowroomDataContext();
            Cat = _db.Categories
                     .OrderBy(c => c.catName.Length)
                     .ToList();

            //Thêm danh mục mới 
        }
    }
}