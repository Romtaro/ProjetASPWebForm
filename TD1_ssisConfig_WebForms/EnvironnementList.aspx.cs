using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class EnvironnementList : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
      
    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {


    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Add_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
    }

    protected void Edit_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Update();
    }


}
