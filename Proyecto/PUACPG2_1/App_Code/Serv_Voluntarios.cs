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
/// Descripción breve de Serv_Voluntarios
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
 [System.Web.Script.Services.ScriptService]
public class Serv_Voluntarios : System.Web.Services.WebService
{
    // datos globles
    SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionSqlServer"].ConnectionString);
    DataSet Datos = new DataSet();


    [WebMethod(EnableSession = true)]
    public string RegVoluntario(String description, String startDate, String endDate, String status, String userid, String empresaid)
    {
        string Resultado = "1";
        try
        {

            //DateTime fechaIni = Convert.ToDateTime(startDate);
            //DateTime fechaFin = Convert.ToDateTime(endDate);


            sqlCon.Open();

            SqlCommand sqlComm = new SqlCommand("Guardar_Voluntario", sqlCon);
            sqlComm.Parameters.AddWithValue("@description", description);
            sqlComm.Parameters.AddWithValue("@startDate", startDate);
            sqlComm.Parameters.AddWithValue("@endDate", endDate);
            sqlComm.Parameters.AddWithValue("@status", status);
            sqlComm.Parameters.AddWithValue("@userid", userid);
            sqlComm.Parameters.AddWithValue("@empresaid", empresaid);

            sqlComm.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlComm;
            da.Fill(Datos, "DatosUsuario");

            sqlCon.Close();

            if (Datos.Tables["DatosUsuario"].Rows.Count > 0)
            {
                Resultado = "1";
            }
            else
            {
                Resultado = "0";
            }

                
        }
        catch (Exception e)
        {
            Resultado = e.Message;
        }

        return Resultado;
    }

}
