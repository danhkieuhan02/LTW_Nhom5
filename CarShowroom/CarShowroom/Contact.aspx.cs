using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShowroom
{
	public partial class Contact1 : System.Web.UI.Page
	{
        public CarShowroomDataContext db = new CarShowroomDataContext();
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnSendContact_Click(object sender, EventArgs e)
        {
            //lay data tu giao dien
            Contact inforContact = new Contact();
            inforContact.Name = ctName.Text;
            inforContact.Email = ctEmail.Text;
            inforContact.Message = ctMsg.Text;

            //luu thay doi tren db
            db.Contacts.InsertOnSubmit(inforContact);
            db.SubmitChanges();
            Response.Redirect("Default.aspx");

            LabelSuccess.Text = Request.QueryString["Cảm ơn quý khách hàng đã quan tâm sản phẩm của chúng tôi. Chúng tôi sẽ sớm liên hệ tư vấn và hỗ trợ!"];
        }
	}
}