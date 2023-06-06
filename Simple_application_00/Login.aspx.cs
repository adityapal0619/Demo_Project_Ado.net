using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Simple_application_00
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1O208CS;Initial Catalog=Register;Integrated Security=true");
        
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Name(Name,age,Gender,Designation) values(@Name,@age,@Gender,@Designation)", con);
            cmd.Parameters.AddWithValue("@Name",TextBox1.Text);
            cmd.Parameters.AddWithValue("@age", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Designation", DropDownList2.SelectedItem.Value);
            if (String.IsNullOrEmpty(TextBox2.Text) && String.IsNullOrEmpty(TextBox1.Text) || (String.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text)))
            {

            }
            else
            {
                try
                {
                    cmd.ExecuteNonQuery();
                    Label1.Text = "Succesfully";
                    this.Label1.ForeColor = Color.Red;
                    Server.TransferRequest(Request.Url.AbsolutePath, false);


                }
                catch (Exception ex)
                {
                    Label1.Text += ex.Message;
                    Label1.ForeColor = Color.Red;
                    
                }

            }


            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

       

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from Name", con);
            con.Open();
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            GridView1.DataSource = sqlDataReader;
            GridView1.DataBind();
            con.Close();
        }

        
    }
}