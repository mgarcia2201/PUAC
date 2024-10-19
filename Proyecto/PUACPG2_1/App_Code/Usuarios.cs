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

//Correo
using System.Net;
using System.Net.Mail;

/// <summary>
/// Descripción breve de Usuarios
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
 [System.Web.Script.Services.ScriptService]
public class Usuarios : System.Web.Services.WebService
{
    SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionSqlServer"].ConnectionString);
    DataSet Datos = new DataSet();

    public class GetDatosUser
    {
        public String id_Usuario { get; set; }
        public String Usuario { get; set; }
        public String Nombre { get; set; }
        public String email { get; set; }
        public String contrasena { get; set; }
        public String fechaReg { get; set; }
        public String idRol { get; set; }
        public String idInstitucion { get; set; }
    }

    [WebMethod(EnableSession = true)]
    public string RegUsers(String user, String nombre, String email, String pass, String freg, String idrol, String idEmpresa)
    {
        string Resultado = "1";
        try
        {
            string idInstitucion = Session["IdEmpresa"].ToString();
            string idrolSession   = Session["IdRol"].ToString();

            DateTime fecha = Convert.ToDateTime(freg);

            if (idrolSession == "1")
            {
                idrol = "2";
            }

            sqlCon.Open();

            SqlCommand sqlComm = new SqlCommand("Guardar_Usuarios", sqlCon);
            sqlComm.Parameters.AddWithValue("@usuario", user);
            sqlComm.Parameters.AddWithValue("@nombre", nombre);
            sqlComm.Parameters.AddWithValue("@email", email);
            sqlComm.Parameters.AddWithValue("@freg", freg);
            sqlComm.Parameters.AddWithValue("@idrol", idrol);
            sqlComm.Parameters.AddWithValue("@pass", pass);
            sqlComm.Parameters.AddWithValue("@idinstitucion", idEmpresa);

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
    public List<GetDatosUser> DatosUser(String userId)
    {
        try
        {
            string idInstitucion = Session["IdEmpresa"].ToString();
            string idRol = Session["IdRol"].ToString();
            List<GetDatosUser> ListDatosUser = new List<GetDatosUser>();
            sqlCon.Open();

            SqlCommand sqlComm = new SqlCommand("Lista_UsuariosEmpresaEdit", sqlCon);
            sqlComm.Parameters.AddWithValue("@idUser", userId);
            sqlComm.Parameters.AddWithValue("@EmpresaId", idInstitucion);
            sqlComm.Parameters.AddWithValue("@IdRol", idRol);

            sqlComm.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlComm;
            da.Fill(Datos, "DatosUsuarioEdit");

            sqlCon.Close();

            if (Datos.Tables["DatosUsuarioEdit"].Rows.Count > 0)
            {

                GetDatosUser datos = new GetDatosUser();
                datos.id_Usuario = Datos.Tables["DatosUsuarioEdit"].Rows[0]["id_usuario"].ToString();
                datos.Usuario = Datos.Tables["DatosUsuarioEdit"].Rows[0]["usuario"].ToString();
                datos.Nombre = Datos.Tables["DatosUsuarioEdit"].Rows[0]["nombre"].ToString();
                datos.email = Datos.Tables["DatosUsuarioEdit"].Rows[0]["email"].ToString();
                datos.contrasena = Datos.Tables["DatosUsuarioEdit"].Rows[0]["contrasena"].ToString();

                DateTime fechaUser = Convert.ToDateTime(Datos.Tables["DatosUsuarioEdit"].Rows[0]["fecha_registro"]);
                datos.fechaReg = fechaUser.ToString("yyyy/MM/dd hh:mm:ss tt", CultureInfo.InvariantCulture);
                //datos.fechaReg = Datos.Tables["DatosUsuarioEdit"].Rows[0]["fecha_registro"].ToString();

                datos.idRol = Datos.Tables["DatosUsuarioEdit"].Rows[0]["id_rol"].ToString();
                datos.idInstitucion = Datos.Tables["DatosUsuarioEdit"].Rows[0]["id_institucion"].ToString();
                ListDatosUser.Add(datos);
            }

            return ListDatosUser;
        }
        catch (Exception e)
        {

            throw;

        }
       

    }

    [WebMethod(EnableSession = true)]
    public string EditUsers(String iduser, String user, String nombre, String email, String pass, String freg, String idrol, String idEmpresa)
    {
        string Resultado = "1";
        try
        {
            string idInstitucion = Session["IdEmpresa"].ToString();

            DateTime fecha = Convert.ToDateTime(freg);


            sqlCon.Open();

            SqlCommand sqlComm = new SqlCommand("Update_Usuarios", sqlCon);
            sqlComm.Parameters.AddWithValue("@iduser", iduser);
            sqlComm.Parameters.AddWithValue("@usuario", user);
            sqlComm.Parameters.AddWithValue("@nombre", nombre);
            sqlComm.Parameters.AddWithValue("@email", email);
            sqlComm.Parameters.AddWithValue("@freg", freg);
            sqlComm.Parameters.AddWithValue("@idrol", idrol);
            sqlComm.Parameters.AddWithValue("@pass", pass);
            sqlComm.Parameters.AddWithValue("@idinstitucion", idEmpresa);

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
    public string DeleteUsers(String iduser)
    {
        string Resultado = "1";
        try
        {
            string idInstitucion = Session["IdEmpresa"].ToString();

            sqlCon.Open();

            SqlCommand sqlComm = new SqlCommand("Delete_Usuarios", sqlCon);
            sqlComm.Parameters.AddWithValue("@iduser", iduser);
            sqlComm.Parameters.AddWithValue("@idinstitucion", idInstitucion);

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
    public string EnvioCorreo(String user, String mensaje)
    {
        string Resultado = "1";
        try
        {
            String SendMailFrom = "mgarciag43@miumg.edu.gt";
            String SendMailTo = "mgarciag43@miumg.edu.gt";
            String SendMailSubject = "Mensajes - PUAC";
            String SendMailBody = "Mensaje de " + user + ": "+ mensaje;

            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com", 587);
            SmtpServer.DeliveryMethod = SmtpDeliveryMethod.Network;
            MailMessage emails = new MailMessage();
            
            // START
            emails.From = new MailAddress(SendMailFrom);
            emails.To.Add(SendMailTo);
            emails.CC.Add(SendMailFrom);
            emails.Subject = SendMailSubject;
            emails.Body = SendMailBody;
            //END
            SmtpServer.Timeout = 5000;
            SmtpServer.EnableSsl = true;
            SmtpServer.UseDefaultCredentials = false;
            SmtpServer.Credentials = new NetworkCredential(SendMailFrom, "Msq9@@gN>B");
            SmtpServer.Send(emails);

            Resultado = "1";
        }
        catch (Exception e)
        {
            Resultado = e.Message;
        }

        return Resultado;
    }


    [WebMethod(EnableSession = true)]
    public string EnvioCorreoDonacion(String amount, String type, String donationDate, String status)
    {
        string Resultado = "1";
        try
        {
            String SendMailFrom = "mgarciag43@miumg.edu.gt";
            String SendMailTo = "mgarciag43@miumg.edu.gt";
            String SendMailSubject = "Mensajes - PUAC - Colaboraciones";
            String SendMailBody = "Monto: " + amount + ", tipo:" + type + ", Fecha: " + donationDate + ", Estado: "+ status;

            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com", 587);
            SmtpServer.DeliveryMethod = SmtpDeliveryMethod.Network;
            MailMessage emails = new MailMessage();

            // START
            emails.From = new MailAddress(SendMailFrom);
            emails.To.Add(SendMailTo);
            emails.CC.Add(SendMailFrom);
            emails.Subject = SendMailSubject;
            emails.Body = SendMailBody;
            //END
            SmtpServer.Timeout = 5000;
            SmtpServer.EnableSsl = true;
            SmtpServer.UseDefaultCredentials = false;
            SmtpServer.Credentials = new NetworkCredential(SendMailFrom, "Msq9@@gN>B");
            SmtpServer.Send(emails);

            Resultado = "1";
        }
        catch (Exception e)
        {
            Resultado = e.Message;
        }

        return Resultado;
    }
}
