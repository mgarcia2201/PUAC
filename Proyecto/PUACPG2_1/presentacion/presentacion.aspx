<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="presentacion.aspx.cs" Inherits="presentacion_presentacion" %>



    <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
        <link href="../CSS/presentacion.css" rel="stylesheet" />
    <style>

        .job-detail{
            border: 1px solid #b74c4c;
            box-shadow: 9px 11px 21px 1px rgba(32, 32, 32, 0.3);
        }

    </style>

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<header class="masthead">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-7 py-5">
                <h1 class="mb-4" style="position:relative;left:300px">¡Bienvenido a la Plataforma Unificada de Apoyo Comunitario (PUAC)!</h1>
              <%--  <h2 class="m-0">Aquí, trabajamos juntos para fortalecer la solidaridad y el apoyo mutuo entre instituciones y la comunidad. Explora las necesidades de asilos, perreras, 
                    estaciones de bomberos, orfanatos y más, y descubre cómo puedes hacer una diferencia a través de donaciones, voluntariado o adopciones. Tu ayuda es clave para mejorar 
                    vidas, y juntos podemos construir un futuro más solidario. ¡Gracias por ser parte de este esfuerzo!</h2>--%>
            </div>
           <%-- <div class="col-lg-5">
                <div class="py-5 px-4 masthead-cards">
                    <div class="d-flex">
                        <a href="#" class="w-50 pr-3 pb-4">
                            <div class="card border-0 border-bottom-red shadow-lg shadow-hover">
                                <div class="card-body text-center">
                                    <div class="text-center">
                                        <i class="fa fa-pencil fa-4x my-2"></i>
                                    </div>
                                    Themes
                                </div>
                            </div>
                        </a>
                        <a href="#" class="w-50 pl-3 pb-4">
                            <div class="card border-0 border-bottom-blue shadow-lg shadow-hover">
                                <div class="card-body text-center">
                                    <div class="text-center">
                                        <i class="fa fa-th fa-4x my-2"></i>
                                    </div>
                                    Templates
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="d-flex">
                        <a href="#" class="w-50 pr-3">
                            <div class="card border-0 border-bottom-yellow shadow-lg shadow-hover">
                                <div class="card-body text-center">
                                    <div class="text-center">
                                        <i class="fa fa-4x fa-code my-2"></i>
                                    </div>
                                    Snippets
                                </div>
                            </div>
                        </a>
                        <a href="#" class="w-50 pl-3">
                            <div class="card border-0 border-bottom-green shadow-lg shadow-hover">
                                <div class="card-body text-center">
                                    <div class="text-center">
                                        <i class="fa fa-4x fa-list my-2"></i>
                                    </div>
                                    Guides
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="shape"></div>
                </div>
            </div>--%>
        </div>


    </div>





  
        <defs>
            <style>
                .a {
                    fill: none;
                }
                
                .b {
                    clip-path: url(#a);
                }
                
                .c,
                .d {
                    fill: #f9f9fc;
                }
                
                .d {
                    opacity: 0.5;
                    isolation: isolate;
                }
            </style>
            <clipPath id="a">
                <rect class="a" width="1920" height="75"></rect>
            </clipPath>
        </defs>
        <title>wave</title>
        <g class="b">
            <path class="c" d="M1963,327H-105V65A2647.49,2647.49,0,0,1,431,19c217.7,3.5,239.6,30.8,470,36,297.3,6.7,367.5-36.2,642-28a2511.41,2511.41,0,0,1,420,48"></path>
        </g>
        <g class="b">
            <path class="d" d="M-127,404H1963V44c-140.1-28-343.3-46.7-566,22-75.5,23.3-118.5,45.9-162,64-48.6,20.2-404.7,128-784,0C355.2,97.7,341.6,78.3,235,50,86.6,10.6-41.8,6.9-127,10"></path>
        </g>
        <g class="b">
            <path class="d" d="M1979,462-155,446V106C251.8,20.2,576.6,15.9,805,30c167.4,10.3,322.3,32.9,680,56,207,13.4,378,20.3,494,24"></path>
        </g>
        <g class="b">
            <path class="d" d="M1998,484H-243V100c445.8,26.8,794.2-4.1,1035-39,141-20.4,231.1-40.1,378-45,349.6-11.6,636.7,73.8,828,150"></path>
        </g>
    </svg>
</header>

        <!-- carrusel de imagenes -->
        <div class="row">
                    <div class="col-md-12" data-wow-delay="0.2s">
                        <div class="carousel slide" data-ride="carousel" id="quote-carousel">
                            <!-- Bottom Carousel Indicators -->
                            <ol class="carousel-indicators">
                                <%--<li data-target="#quote-carousel" data-slide-to="0" class="active"><img class="img-responsive " src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="">
                                </li>
                                <li data-target="#quote-carousel" data-slide-to="1"><img class="img-responsive" src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="">
                                </li>--%>
                                <%--<li data-target="#quote-carousel" data-slide-to="2"><img class="img-responsive" src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="">
                                </li>--%>
                            </ol>

                            <!-- Carousel Slides / Quotes -->
                            <div class="carousel-inner text-center">

                                <!-- Quote 1 -->
                                <div class="item active">
                                    <blockquote>
                                        <div class="row">
                                            <div class="col-sm-8 col-sm-offset-2">

                                                <p>En PUAC, nos dedicamos a impulsar el cambio social a través de la colaboración y el compromiso, creando un impacto positivo en nuestras comunidades.</p>
                                                
                                            </div>
                                        </div>
                                    </blockquote>
                                </div>
                                <!-- Quote 2 -->
                                <div class="item">
                                    <blockquote>
                                        <div class="row">
                                            <div class="col-sm-8 col-sm-offset-2">

                                                <p>Conectamos a personas y organizaciones con oportunidades que transforman vidas, trabajando juntos hacia un futuro más inclusivo y sostenible para todos.</p>
                                                
                                            </div>
                                        </div>
                                    </blockquote>
                                </div>
                                <!-- Quote 3 -->
                                <div class="item">
                                    <blockquote>
                                        <div class="row">
                                            <div class="col-sm-8 col-sm-offset-2">

                                                <p>Tu participación es clave para marcar la diferencia: únete a nosotros en nuestra misión de promover la solidaridad y el bienestar comunitario en cada rincón que tocamos.</p>
                                                
                                            </div>
                                        </div>
                                    </blockquote>
                                </div>
                            </div>

                            <!-- Carousel Buttons Next/Prev -->
                           
                        </div>
                    </div>
                </div>


        <!--tarjetas de presentación -->


<link href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/4.9.95/css/materialdesignicons.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js" integrity="sha256-Zr3vByTlMGQhvMfgkQ5BtWRSKBGa2QlspKYJnkjZTmo=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha256-mLBIhmBvigTFWPSCtvdu6a76T+3Xyt+K571hupeFLg4=" crossorigin="anonymous" />



          <div class="row">
        <div class="col-lg-12">
            <h3 class="text-dark mt-4 mb-4" style="left: 750px;position: relative;font-weight:bold">Comunidad PUAC - Asociados y Colaboradores</h3>
        </div>
    </div>

    <div class="row">

          <asp:repeater id="RepDataEmp" runat="server">
                <itemtemplate> 
                    <div class="col-lg-4">
                        <div class="job-detail candidates-profile-education text-center text-muted mb-5 mt-5">
                            <%--<div class="profile-education-icon">
                                <i class="mdi mdi-school"></i>
                            </div>--%>
                            <h6 class="text-uppercase f-17"><a href="#" class="text-muted"><%# Eval("ubicacion") %></a></h6>
                            <p class="f-14 mb-1" style="font-weight:bold"><%# Eval("Nombre") %></p>
                            <p class="f-14 mb-0"><%# Eval("descripcion") %></p>
                            <hr class="mt-2 mb-2">
                            <p class="f-14 mb-0" style="font-weight:bold"><%# Eval("contacto") %></p>
                        </div>
                        <br />
                    </div>
                 </itemtemplate>
         </asp:repeater>

        

    </div>


        <!--footer -->

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />
<footer class="bg-dark-gradient footer" style="height:100%">
    <div class="footer-top">
        <div class="container">
            <div class="footer-border-bottom pb-6 mb-5">
                <div class="row">
                    <div class="col-lg-4 col-xl-3">
                        <h4 class="text-white">
                            Sign up to Get Latest Updates
                        </h4>
                    </div>
                    <div class="col-lg-4 col-xl-6">
                        <form class="d-flex flex-row mb-2 p-1 bg-white input-group">
                            <input type="email" class="form-control rounded-0 border-0" placeholder="you@yoursite.com">
                            <button class="btn btn-secondary rounded-0 flex-shrink-0" type="submit">Subscribe</button>
                        </form>
                    </div>
                    <div class="col-lg-4 col-xl-3">
                        <div class="text-lg-end text-white">
                            <span class="h6">Call Us On</span><br>
                            <span class="h3">1-800-222-000</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-lg-3 my-4">
                    <div class="mb-4">
                        <img src="static/img/logo-light.svg" title="" alt="">
                    </div>
                    <div class="text-white-65 mb-4 text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</div>
                    <div class="nav footer-socila-icon">
                        <a href="#">
<i class="fab fa-facebook-f"></i>
</a>
                        <a href="#">
<i class="fab fa-twitter"></i>
</a>
                        <a href="#">
<i class="fab fa-instagram"></i>
</a>
                        <a href="#">
<i class="fab fa-linkedin-in"></i>
</a>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-2 my-4">
                    <h5 class="text-white h6 mb-4">Customer</h5>
                    <ul class="list-unstyled white-link footer-links">
                        <li>
                            <a href="#">Get Corpo</a>
                        </li>
                        <li>
                            <a href="#">Documentation</a>
                        </li>
                        <li>
                            <a href="#">Help center</a>
                        </li>
                        <li>
                            <a href="#">Pricing</a>
                        </li>
                        <li>
                            <a href="#">Contact us</a>
                        </li>
                    </ul>
                </div>
                <div class="col-sm-6 col-lg-2 my-4">
                    <h5 class="text-white h6 mb-4">Product</h5>
                    <ul class="list-unstyled white-link footer-links">
                        <li>
                            <a href="#">Portfolio</a>
                        </li>
                        <li>
                            <a href="#">Blog</a>
                        </li>
                        <li>
                            <a href="#">Join our team</a>
                        </li>
                        <li>
                            <a href="#">Elements</a>
                        </li>
                        <li>
                            <a href="#">Products</a>
                        </li>
                    </ul>
                </div>
                <div class="col-sm-6 col-lg-2 my-4">
                    <h5 class="text-white h6 mb-4">Company</h5>
                    <ul class="list-unstyled white-link footer-links">
                        <li>
                            <a href="#">About</a>
                        </li>
                        <li>
                            <a href="#">Careers</a>
                        </li>
                        <li>
                            <a href="#">Legal &amp; Security</a>
                        </li>
                        <li>
                            <a href="#">Terms of use</a>
                        </li>
                        <li>
                            <a href="#">We're hiring!</a>
                        </li>
                    </ul>
                </div>
                <div class="col-sm-6 col-lg-3 my-4">
                    <h5 class="text-white h6 mb-4">Company</h5>
                    <div class="white-link">
                        <div class="d-flex pb-3">
                            <div class="avatar avatar-lg rounded">
                                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" title="" alt="">
                            </div>
                            <div class="col ps-3">
                                <small class="text-white-65">29 March 2021</small>
                                <h6 class="font-w-500 h6 m-0"><a class="text-white" href="#">Markdown Language Sample Blog Post Styling</a></h6>
                            </div>
                        </div>
                        <div class="d-flex">
                            <div class="avatar avatar-lg rounded">
                                <img src="https://bootdey.com/img/Content/avatar/avatar2.png" title="" alt="">
                            </div>
                            <div class="col ps-3">
                                <small class="text-white-65">29 March 2021</small>
                                <h6 class="font-w-500 h6 m-0"><a class="text-white" href="#">Markdown Language Sample Blog Post Styling</a></h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom footer-border-top light py-3">
        <div class="container text-center">
            <p class="m-0">© 2021 copyright <a href="#" class="text-reset text-white">Bootdey.com</a></p>
        </div>
    </div>
</footer>

       <asp:TextBox ID="TxtidUser" runat="server" Style="display:none"></asp:TextBox>
       <asp:TextBox ID="TxidEmpresa" runat="server" Style="display:none"></asp:TextBox>
       <asp:TextBox ID="TxidRol" runat="server" Style="display:none"></asp:TextBox>

        <script>
            $(document).ready(function () {
                Permisos();
            $(".hideZone").hide();
         });


         

        </script>

    </asp:Content>