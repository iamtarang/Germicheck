using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Website1
{
    public class ConnectionClass
    {
        public ConnectionClass()
        {

        }

        public SqlConnection con()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EndSemProjectConnectionString"].ConnectionString);
            con.Open();

            return con;
        }

        public DataTable bindGridView()
        {
            SqlCommand selectUser = new SqlCommand("Select * from tblUser", con());
            SqlDataReader rdrUser = selectUser.ExecuteReader();
            DataTable tblUser = new DataTable();
            tblUser.Load(rdrUser);
            return tblUser;
        }

        public DataTable bindGridView2()
        {

            SqlCommand selectAppt = new SqlCommand("Select * from tblAppointment", con());
            SqlDataReader rdrAppt = selectAppt.ExecuteReader();
            DataTable tblAppointment = new DataTable();
            tblAppointment.Load(rdrAppt);
            return tblAppointment;
        }
    }
}