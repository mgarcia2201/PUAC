<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="instituciones.aspx.cs" Inherits="instituciones_instituciones" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../CSS/presentacion_instituciones.css" rel="stylesheet" />
    <style>

    </style>


    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <div class="slideshow-container">
        
         <asp:repeater id="RepDataInst" runat="server">
                <itemtemplate> 
                     <div class="mySlides fade">
                            <div style="color:black;font-weight:bold;" class="numbertext"><%# Eval("ubicacion") %>, <%# Eval("contacto") %></div>
                            <img src="https://hacertfg.com/wp-content/uploads/2023/11/psicologos-voluntarios-1200x800.webp" style="width:100%;">
                            <div class="numbertext" style="color:black;font-weight:bold;font-size:50px;left:215px"><%# Eval("Nombre") %></div>
                        </div>
                 </itemtemplate>
         </asp:repeater>

    
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>
    <br>


    <div style="text-align:center;display:none">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
    </div>

<%-- <div class="button-container">
    <button class="collaboration-btn" onclick="window.location.href='colaboracion.aspx'">Realizar una Colaboración</button>
</div>--%>

    <div class="button-container" style="text-align: center; margin-top: 20px;">
    <button style="background-color: #28a745; color: white; padding: 15px 32px; font-size: 18px; border: none; border-radius: 4px; cursor: pointer;" onclick="Donaciones()">Realizar una Colaboración</button>
    </div>

    <script>


    let slideIndex = 1;
    showSlides(slideIndex);

   
    setInterval(function() {
        plusSlides(1);
    }, 5000);

 
    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

 
    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        let i;
        let slides = document.getElementsByClassName("mySlides");
        let dots = document.getElementsByClassName("dot");
        if (n > slides.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = slides.length }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";  
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", ""); 
        }
        slides[slideIndex - 1].style.display = "block"; 
        dots[slideIndex - 1].className += " active";  
    }

        function Donaciones() {
            location.href = "../donaciones/admin_donaciones";
        }

    </script>


    </asp:Content>
