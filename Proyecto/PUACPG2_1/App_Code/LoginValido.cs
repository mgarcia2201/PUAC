using System;
using System.Collections.Generic;
using System.Web.Services;

// BD Conexion
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Descripción breve de LoginValido
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
[System.Web.Script.Services.ScriptService]
public class LoginValido : System.Web.Services.WebService
{
    // datos globles
    SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionSqlServer"].ConnectionString);
    DataSet Datos = new DataSet();

    public class GetDatosUser
    {
        public int idUsuario { get; set; }
        public int idRol { get; set; }
        public int idEmpresa { get; set; }
    }

    // Fin datos globles

    [WebMethod]
    public string HelloWorld(String usuario, String pass)
    {
        string Resultado = "0";

        sqlCon.Open();

        SqlCommand sqlComm = new SqlCommand("Lista_Usuarios", sqlCon);
        sqlComm.Parameters.AddWithValue("@usuario", usuario);
        sqlComm.Parameters.AddWithValue("@pass", pass);

        sqlComm.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = sqlComm;
        da.Fill(Datos, "DatosUsuario");

        sqlCon.Close();

        //Valida datos

        if (Datos.Tables["DatosUsuario"].Rows.Count > 0)
        {
            Resultado = "1";
        }
        else
        {
           Resultado = "0";
        }

        return Resultado;
    }


    [WebMethod]
    public List<string> Sesion2(String usuario, String pass)
    {
        List<string> DatosUser = new List<string>();

        sqlCon.Open();

        SqlCommand sqlComm = new SqlCommand("Lista_Usuarios", sqlCon);
        sqlComm.Parameters.AddWithValue("@usuario", usuario);
        sqlComm.Parameters.AddWithValue("@pass", pass);

        sqlComm.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = sqlComm;
        da.Fill(Datos, "DatosUsuario");

        sqlCon.Close();

        //Valida datos

        if (Datos.Tables["DatosUsuario"].Rows.Count > 0)
        {
            DatosUser.Add(Datos.Tables["DatosUsuario"].Rows[0]["id_usuario"].ToString());
            DatosUser.Add(Datos.Tables["DatosUsuario"].Rows[0]["id_rol"].ToString());
            DatosUser.Add(Datos.Tables["DatosUsuario"].Rows[0]["id_institucion"].ToString());
        }

        return DatosUser;
    }


    [WebMethod(EnableSession = true)]
    public List<GetDatosUser> Sesion(String usuario, String pass)
    {

        List<GetDatosUser> ListDatosUser = new List<GetDatosUser>();
        sqlCon.Open();

        SqlCommand sqlComm = new SqlCommand("Lista_Usuarios", sqlCon);
        sqlComm.Parameters.AddWithValue("@usuario", usuario);
        sqlComm.Parameters.AddWithValue("@pass", pass);

        sqlComm.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = sqlComm;
        da.Fill(Datos, "DatosUsuario");

        sqlCon.Close();

        //Valida datos

        if (Datos.Tables["DatosUsuario"].Rows.Count > 0)
        {

            Session["IdUser"] = Convert.ToInt32(Datos.Tables["DatosUsuario"].Rows[0]["id_usuario"]);
            Session["IdRol"] = Convert.ToInt32(Datos.Tables["DatosUsuario"].Rows[0]["id_rol"]);
            Session["IdEmpresa"] = Convert.ToInt32(Datos.Tables["DatosUsuario"].Rows[0]["id_institucion"]);

            GetDatosUser datos = new GetDatosUser();
            datos.idUsuario = Convert.ToInt32(Datos.Tables["DatosUsuario"].Rows[0]["id_usuario"]);
            datos.idRol = Convert.ToInt32(Datos.Tables["DatosUsuario"].Rows[0]["id_rol"]);
            datos.idEmpresa = Convert.ToInt32(Datos.Tables["DatosUsuario"].Rows[0]["id_institucion"]); ;
            ListDatosUser.Add(datos);
        }

        return ListDatosUser;
    }


    [WebMethod(EnableSession = true)]
    public string LimpiaSesion()
    {
        string Resultado = "1";

        Session["IdUser"] = 0;
        Session["IdRol"] = 0;
        Session["IdEmpresa"] = 0;

        return Resultado;
    }


} // fin de clase


