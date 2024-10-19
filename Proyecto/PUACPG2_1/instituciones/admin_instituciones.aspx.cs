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


public partial class instituciones_admin_instituciones : System.Web.UI.Page
{
    SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionSqlServer"].ConnectionString);
    DataSet Datos = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        CargaInstitucion();
        CargaTipo();
    }

    public void CargaInstitucion()
    {

        ValidaSesion();
        string idInstitucion = Session["IdEmpresa"].ToString();
        string idRol = Session["IdRol"].ToString();
        string idUser = Session["IdUser"].ToString();

        sqlCon.Open();

        SqlCommand sqlComm = new SqlCommand("Lista_Instituciones", sqlCon);
        sqlComm.Parameters.AddWithValue("@EmpresaId", idInstitucion);
        sqlComm.Parameters.AddWithValue("@IdRol", idRol);
        sqlComm.Parameters.AddWithValue("@idUser", idUser);

        sqlComm.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = sqlComm;
        da.Fill(Datos, "DataInst");

        DataTable DatosUser = Datos.Tables["DataInst"];
        RepDataInst.DataSource = DatosUser;
        RepDataInst.DataBind();

        sqlCon.Close();


    }

    public void CargaTipo()
    {
        ValidaSesion();
        string idInstitucion = Session["IdEmpresa"].ToString();
        string idRol = Session["IdRol"].ToString();
        string idUser = Session["IdUser"].ToString();

        sqlCon.Open();

        SqlCommand sqlComm = new SqlCommand("Lista_TipoInstituciones", sqlCon);
        sqlComm.Parameters.AddWithValue("@EmpresaId", idInstitucion);
        sqlComm.Parameters.AddWithValue("@IdRol", idRol);
        sqlComm.Parameters.AddWithValue("@idUser", idUser);

        sqlComm.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = sqlComm;
        da.Fill(Datos, "DataTipoInst");

        DataTable DatosUser = Datos.Tables["DataTipoInst"];
        RepDataTipoInst.DataSource = DatosUser;
        RepDataTipoInst.DataBind();

        sqlCon.Close();


    }

    public void ValidaSesion()
    {
        Object User = Session["IdUser"];
        if (User  == null)
        {
            Session["IdUser"] = 0;
            Session["IdRol"] = 0;
            Session["IdEmpresa"] = 0;

            Response.Redirect("../presentacion/presentacion.aspx");
        }
    }


}