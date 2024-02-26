using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace crud
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=AJITHABHI;Initial Catalog=crud;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into StudentInfo_Table values('"+TextBox1.Text+ "','"+TextBox2.Text+ "','"+DropDownList1.SelectedValue+ "','"+TextBox3.Text+ "','"+TextBox4.Text+"')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(),"script","alert('successfully inserted');",true);
            LoadRecord();


        }
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from StudentInfo_Table", con);
            SqlDataAdapter d= new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;  
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("update StudentInfo_Table set StudentName='"+TextBox2.Text+"',Address='"+DropDownList1.SelectedValue+"',Age='"+TextBox3.Text+"',Contact='"+TextBox4.Text+"' where StudentID='"+TextBox1.Text+"'",con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully updated');", true);
            LoadRecord();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete StudentInfo_Table where StudentID='"+TextBox1.Text+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully deleted');", true);
            LoadRecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            SqlCommand comm = new SqlCommand("select * from StudentInfo_Table where StudentID='"+TextBox1.Text+"'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select * from StudentInfo_Table where StudentID='" + TextBox1.Text + "'", con);
            SqlDataReader r=comm.ExecuteReader();
            while(r.Read())
            {
                TextBox2.Text = r.GetValue(1).ToString();
                DropDownList1.SelectedValue = r.GetValue(2).ToString();
                TextBox3.Text = r.GetValue(3).ToString();
                TextBox4.Text = r.GetValue(4).ToString();
            }
        }
    }
}