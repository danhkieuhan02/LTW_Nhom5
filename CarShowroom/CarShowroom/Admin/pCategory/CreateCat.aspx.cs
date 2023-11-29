using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom.Admin.pCategory
{
    public partial class CreateCat : System.Web.UI.Page
    {
        public CarShowroomDataContext db = new CarShowroomDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void cCreate_Click(object sender, EventArgs e)
        {
            var c = new Category();
            c.catName =  cName.Text;

            db.Categories.InsertOnSubmit(c);
            db.SubmitChanges();
        }
    }
}