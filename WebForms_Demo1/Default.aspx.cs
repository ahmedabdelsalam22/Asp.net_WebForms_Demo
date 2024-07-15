using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms_Demo1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            string file = Server.MapPath("~/img/");
            fu_image.SaveAs(file+ Path.GetFileName(fu_image.FileName));

            show_image.ImageUrl = "~/img/" + Path.GetFileName(fu_image.FileName);

            lbl_show_title.Text = txt_title.Text;
            lbl_show_category.Text = rbl_category.SelectedItem.Text;
            lbl_show_year.Text = txt_year.SelectedItem.Text;
            lbl_show_userAccount.Text = txt_userAccount.Text;
        }
    }
}