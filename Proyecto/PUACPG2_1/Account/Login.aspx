﻿<%@  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" Async="true" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<style>
    .login-container {
    position: relative;
    margin: 10% auto;
    max-width: 340px;
}

.login-container .loginbox {
    position: relative;
    width: 340px !important;
    height: auto !important;
    padding: 0 0 20px 0;
    -webkit-box-shadow: 0 0 14px rgba(0,0,0,.1);
    -moz-box-shadow: 0 0 14px rgba(0,0,0,.1);
    box-shadow: 0 0 14px rgba(0,0,0,.1);
}

.bg-white {
    background-color: #fff !important;
}

.login-container .loginbox .loginbox-title {
    position: relative;
    text-align: center;
    width: 100%;
    height: 35px;
    padding-top: 10px;
    font-family: 'Lucida Sans','trebuchet MS',Arial,Helvetica;
    font-size: 20px;
    font-weight: normal;
    color: #444;
}

.login-container .loginbox .loginbox-social {
    padding: 0 10px 10px;
    text-align: center;
}

.login-container .loginbox .loginbox-social .social-title {
    font-size: 14px;
    font-weight: 500;
    color: #a9a9a9;
    margin-top: 10px;
}

.login-container .loginbox .loginbox-social .social-buttons {
    height: 80px;
    padding: 15px 35px;
    text-align: center;
}

.login-container .loginbox .loginbox-social .social-buttons .button-facebook {
    float: left;
    border: 2px solid #3b5998;
    color: #3b5998;
    border-radius: 50%;
    width: 50px;
    height: 50px;
    margin-right: 30px;
    background-color: #fff;
}

.login-container .loginbox .loginbox-social .social-buttons .button-twitter {
    float: left;
    border: 2px solid #29c1f6;
    color: #29c1f6;
    border-radius: 50%;
    width: 50px;
    height: 50px;
    margin-right: 30px;
    background-color: #fff;
}

.login-container .loginbox .loginbox-social .social-buttons .button-google  {
    float: left;
    border: 2px solid #ef4f1d;
    color: #ef4f1d;
    border-radius: 50%;
    width: 50px;
    height: 50px;
    margin-right: 30px;
    background-color: #fff;
}

.login-container .loginbox .loginbox-social .social-buttons .button-facebook i {
    font-size: 26px;
    line-height: 50px;
}

.login-container .loginbox .loginbox-social .social-buttons .button-twitter i {
    font-size: 26px;
    line-height: 50px;
}

.login-container .loginbox .loginbox-social .social-buttons .button-google i {
    font-size: 26px;
    line-height: 50px;
}

.login-container .loginbox .loginbox-or {
    position: relative;
    text-align: center;
    height: 20px;
}

.login-container .loginbox .loginbox-or .or-line {
    position: absolute;
    height: 1px;
    top: 10px;
    left: 40px;
    right: 40px;
    background-color: #ccc;
}

.login-container .loginbox .loginbox-or .or {
    position: absolute;
    top: 0;
    -lh-property: 0;
    left: -webkit-calc(50% - 25px);
    left: -moz-calc(50% - 25px);
    left: calc(50% - 25px);
    width: 50px;
    height: 20px;
    background-color: #fff;
    color: #999;
    margin: 0 auto;
}

.login-container .loginbox .loginbox-textbox {
    padding: 10px 40px;
}

.login-container .loginbox .loginbox-textbox .form-control {
    -webkit-border-radius: 3px !important;
    -webkit-background-clip: padding-box !important;
    -moz-border-radius: 3px !important;
    -moz-background-clip: padding !important;
    border-radius: 3px !important;
    background-clip: padding-box !important;
}

.login-container .loginbox .loginbox-forgot {
    padding-left: 40px;
}

.login-container .loginbox .loginbox-forgot a {
    font-size: 11px;
    color: #666;
}

.login-container .loginbox .loginbox-submit {
    padding: 10px 40px;
}

.login-container .loginbox .loginbox-signup {
    text-align: center;
    padding-top: 10px;
}

.login-container .loginbox .loginbox-signup a {
    font-size: 13px;
    color: #666;
}

.login-container .logobox {
    width: 340px !important;
    height: 50px !important;
    padding: 5px;
    margin-top: 15px;
    -webkit-box-shadow: 0 0 14px rgba(0,0,0,.1);
    -moz-box-shadow: 0 0 14px rgba(0,0,0,.1);
    box-shadow: 0 0 14px rgba(0,0,0,.1);
    background-color: #fff;
    text-align: left;
    box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
}




</style>

     <div class="login-container animated fadeInDown bootstrap snippets bootdeys">
            <div class="loginbox bg-white">
                <div class="loginbox-title">INICIAR SESIÓN</div>
                <div class="loginbox-textbox">
                    <input type="text" class="form-control" placeholder="Usuario" id="UserLog">
                </div>
                <div class="loginbox-textbox">
                    <input type="password" class="form-control" placeholder="Contraseña" id="PassLog">
                </div>
                <div class="loginbox-forgot">
                    <a>Olvido su contraseña?</a>
                </div>
                <div class="loginbox-submit">
                    <input type="button" class="btn btn-primary btn-block" value="Iniciar Sesión" onclick="Sesion();">
                </div>
            </div>
            <div class="logobox">
            </div>
        </div>
 
    <script>
        $(document).ready(function () {
             Permisos();
            $(".hideZone").hide();
        });

        function Sesion() {
            var user = $("#UserLog").val();
            var pass = $("#PassLog").val();

            if (user != "" && pass != "") {

                 var datos_enviados = {
                     'usuario': user,
                     'pass' : pass

                }

                $.ajax({
                type: 'POST',
                url: '../Account/Servicios/LoginValido.asmx/Sesion',
                data: JSON.stringify(datos_enviados), 
                contentType: 'application/json',
                    success: function (data) {

                        if (data.d.length > 0) {

                            var idUser = data.d[0].idUsuario;
                            var idRol = data.d[0].idRol;
                            var idEmpresa = data.d[0].idEmpresa;

                            location.href = "../presentacion/presentacion";
                        } else {
                            alert("El usuario no existe o credenciales incorrectas");
                        }

                },
                error: function (error) {
                    console.log(error)
                }
            });

                
            } else {
                alert("Campos vacíos");
            }

        }


    </script>

</asp:Content>

