using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;


// BD Conexion
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;

/// <summary>
/// Descripción breve de Serv_Institucion
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
[System.Web.Script.Services.ScriptService]
public class Serv_Institucion : System.Web.Services.WebService
{
    SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionSqlServer"].ConnectionString);
    DataSet Datos = new DataSet();

    public class GetDatosEmpresa
    {
        public String id_institucion { get; set; }
        public String nombre { get; set; }
        public String ubicacion { get; set; }
        public String descripcion { get; set; }
        public String contacto { get; set; }
        public String tipo_empresa_id { get; set; }
        public String nombre_banco { get; set; }
        public String tipo_cuenta { get; set; }
        public String no_cuenta { get; set; }
    }

    [WebMethod(EnableSession = true)]
    public string SaveInst(String nombre, String TipoInst, String ubicacion, String descripcion, String contacto, String Nbanco, String TipoCuenta, String NoCuenta)
    {
        string Resultado = "1";
        try
        {

            sqlCon.Open();

            SqlCommand sqlComm = new SqlCommand("Guardar_Empresa", sqlCon);

            sqlComm.Parameters.AddWithValue("@nombre", nombre);
            sqlComm.Parameters.AddWithValue("@TipoInst", TipoInst);
            sqlComm.Parameters.AddWithValue("@ubicacion", ubicacion);
            sqlComm.Parameters.AddWithValue("@descripcion", descripcion);
            sqlComm.Parameters.AddWithValue("@contacto", contacto);
            sqlComm.Parameters.AddWithValue("@Nbanco", Nbanco);
            sqlComm.Parameters.AddWithValue("@TipoCuenta", TipoCuenta);
            sqlComm.Parameters.AddWithValue("@NoCuenta", NoCuenta);

            sqlComm.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlComm;
            da.Fill(Datos, "DatosUsuario");

            sqlCon.Close();

            Resultado = "1";
        }
        catch (Exception e)
        {
            Resultado = e.Message;
        }

        return Resultado;
    }

    [WebMethod(EnableSession = true)]
    public List<GetDatosEmpresa> DatosInstitucion(String idinstitucion)
    {
        try
        {
            List<GetDatosEmpresa> ListDatosEmpresa = new List<GetDatosEmpresa>();
            sqlCon.Open();

            SqlCommand sqlComm = new SqlCommand("Datos_Empresa", sqlCon);
            sqlComm.Parameters.AddWithValue("@idinstitucion", idinstitucion);
            sqlComm.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlComm;
            da.Fill(Datos, "DatosEmpresa");

            sqlCon.Close();

            if (Datos.Tables["DatosEmpresa"].Rows.Count > 0)
            {

                GetDatosEmpresa datos = new GetDatosEmpresa();
                datos.id_institucion = Datos.Tables["DatosEmpresa"].Rows[0]["id_institucion"].ToString();
                datos.nombre = Datos.Tables["DatosEmpresa"].Rows[0]["nombre"].ToString();
                datos.ubicacion = Datos.Tables["DatosEmpresa"].Rows[0]["ubicacion"].ToString();
                datos.descripcion = Datos.Tables["DatosEmpresa"].Rows[0]["descripcion"].ToString();
                datos.contacto = Datos.Tables["DatosEmpresa"].Rows[0]["contacto"].ToString();
                datos.tipo_empresa_id = Datos.Tables["DatosEmpresa"].Rows[0]["tipo_empresa_id"].ToString();
                datos.nombre_banco = Datos.Tables["DatosEmpresa"].Rows[0]["nombre_banco"].ToString();
                datos.tipo_cuenta = Datos.Tables["DatosEmpresa"].Rows[0]["tipo_cuenta"].ToString();
                datos.no_cuenta = Datos.Tables["DatosEmpresa"].Rows[0]["no_cuenta"].ToString();
                ListDatosEmpresa.Add(datos);
            }

            return ListDatosEmpresa;
        }
        catch (Exception e)
        {

            throw;

        }


    }

    [WebMethod(EnableSession = true)]
    public string EditInst(String institucion, String nombre, String TipoInst, String ubicacion, String descripcion, String contacto, String Nbanco, String TipoCuenta, String NoCuenta)
    {
        string Resultado = "1";
        try
        {

            sqlCon.Open();

            SqlCommand sqlComm = new SqlCommand("Editar_Empresa", sqlCon);

            sqlComm.Parameters.AddWithValue("@institucion", institucion);
            sqlComm.Parameters.AddWithValue("@nombre", nombre);
            sqlComm.Parameters.AddWithValue("@TipoInst", TipoInst);
            sqlComm.Parameters.AddWithValue("@ubicacion", ubicacion);
            sqlComm.Parameters.AddWithValue("@descripcion", descripcion);
            sqlComm.Parameters.AddWithValue("@contacto", contacto);
            sqlComm.Parameters.AddWithValue("@Nbanco", Nbanco);
            sqlComm.Parameters.AddWithValue("@TipoCuenta", TipoCuenta);
            sqlComm.Parameters.AddWithValue("@NoCuenta", NoCuenta);

            sqlComm.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlComm;
            da.Fill(Datos, "DatosUsuario");

            sqlCon.Close();

            Resultado = "1";
        }
        catch (Exception e)
        {
            Resultado = e.Message;
        }

        return Resultado;
    }

    [WebMethod(EnableSession = true)]
    public string EliminarInst(String idinstitucion)
    {
        string Resultado = "1";
        try
        {

            sqlCon.Open();

            SqlCommand sqlComm = new SqlCommand("Eliminar_Empresa", sqlCon);

            sqlComm.Parameters.AddWithValue("@institucion", idinstitucion);
            sqlComm.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlComm;
            da.Fill(Datos, "DatosUsuario");

            sqlCon.Close();

            Resultado = "1";
        }
        catch (Exception e)
        {
            Resultado = e.Message;
        }

        return Resultado;
    }

}
