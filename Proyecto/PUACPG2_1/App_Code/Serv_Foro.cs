using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;


// BD Conexion
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de Serv_Foro
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
 [System.Web.Script.Services.ScriptService]
public class Serv_Foro : System.Web.Services.WebService
{
    // datos globles
    SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionSqlServer"].ConnectionString);
    DataSet Datos = new DataSet();

    [WebMethod(EnableSession = true)]
    public string SaveForo(String TituloForo, String Descripcion, String FechaForo, String Imagen)
    {

        string IdUser = Session["IdUser"].ToString();
        string Resultado = "0";

        sqlCon.Open();

        SqlCommand sqlComm = new SqlCommand("Guardar_Foro", sqlCon);
        sqlComm.Parameters.AddWithValue("@titulo", TituloForo);
        sqlComm.Parameters.AddWithValue("@descripcion", Descripcion);
        sqlComm.Parameters.AddWithValue("@fechaCreacion", FechaForo);
        sqlComm.Parameters.AddWithValue("@UserId", IdUser);
        sqlComm.Parameters.AddWithValue("@imagen", Imagen);

        sqlComm.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = sqlComm;
        da.Fill(Datos, "DatosUsuario");

        sqlCon.Close();



        return Resultado;
    }

}
