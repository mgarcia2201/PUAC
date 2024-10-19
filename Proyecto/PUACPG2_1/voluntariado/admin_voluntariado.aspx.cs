using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// BD Conexion
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class voluntariado_admin_voluntariado : System.Web.UI.Page
{

    SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionSqlServer"].ConnectionString);
    DataSet Datos = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        CargaVoluntarios();
    }


    public void CargaVoluntarios()
    {

        string idInstitucion = Session["IdEmpresa"].ToString();
        string idRol = Session["IdRol"].ToString();
        string idUser = Session["IdUser"].ToString();

        sqlCon.Open();

        SqlCommand sqlComm = new SqlCommand("Lista_Voluntarios", sqlCon);
        sqlComm.Parameters.AddWithValue("@EmpresaId", idInstitucion);
        sqlComm.Parameters.AddWithValue("@IdRol", idRol);

        sqlComm.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = sqlComm;
        da.Fill(Datos, "DatosUsuario");

        DataTable DatosUser = Datos.Tables["DatosUsuario"];
        RepUserData.DataSource = DatosUser;
        RepUserData.DataBind();

        sqlCon.Close();


    }
}