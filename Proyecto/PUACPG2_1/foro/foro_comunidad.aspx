﻿<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeFile="foro_comunidad.aspx.cs" Inherits="presentacion_presentacion_instituciones" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../CSS/Presentacion_PUAC.css" rel="stylesheet" />
    <style>

       



    </style>

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<div class="container">
<div class="page-inner no-page-title">
    <!-- start page main wrapper -->
    <div id="main-wrapper">
        <div class="row">
            <div class="col-lg-5 col-xl-3">
                <div class="card card-white grid-margin">
                    <div class="card-heading clearfix">
                        <h4 class="card-title">User Profile</h4>
                    </div>
                    <div class="card-body user-profile-card mb-3">
                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="user-profile-image rounded-circle" alt="" />
                        <h4 class="text-center h6 mt-2">Lois Anderson</h4>
                        <p class="text-center small">UI/UX Designer</p>
                        <button class="btn btn-theme btn-sm">Follow</button>
                        <button class="btn btn-theme btn-sm">Message</button>
                    </div>
                    <hr />
                    <div class="card-heading clearfix mt-3">
                        <h4 class="card-title">User Profile</h4>
                    </div>
                    <div class="card-body mb-3">
                        <a href="#" class="label label-success mb-2">HTML</a>
                        <a href="#" class="label label-success mb-2">CSS</a>
                        <a href="#" class="label label-success mb-2">Sass</a>
                        <a href="#" class="label label-success mb-2">Bootstrap</a>
                        <a href="#" class="label label-success mb-2">Javascript</a>
                        <a href="#" class="label label-success mb-2">Photoshop</a>
                        <a href="#" class="label label-success">UI</a>
                        <a href="#" class="label label-success">UX</a>
                    </div>
                    <hr />
                    <div class="card-heading clearfix mt-3">
                        <h4 class="card-title">About</h4>
                    </div>
                    <div class="card-body mb-3">
                        <p class="mb-0">Lorem ipsum dolor sitelt amet, consectetur adipis icing elit, sed do eiusmod tempor incididunt utitily labore et dolore magna aliqua metavta.</p>
                    </div>
                    <hr />
                    <div class="card-heading clearfix mt-3">
                        <h4 class="card-title">Contact Information</h4>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-borderless mb-0 text-muted">
                                <tbody>
                                    <tr>
                                        <th scope="row">Email:</th>
                                        <td>addyour@emailhere</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Phone:</th>
                                        <td>(+44) 123 456 789</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Address:</th>
                                        <td>74 Guild Street 542B, Great North Town MT.</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-7 col-xl-6">
                <div class="card card-white grid-margin">
                    <div class="card-body">
                        <div class="post">
                            <textarea class="form-control" placeholder="Post" rows="4"></textarea>
                            <div class="post-options">
                                <a href="#"><i class="fa fa-camera"></i></a>
                                <a href="#"><i class="fas fa-video"></i></a>
                                <a href="#"><i class="fa fa-music"></i></a>
                                <button class="btn btn-outline-primary float-right">Post</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="profile-timeline">
                    <ul class="list-unstyled">
                        <li class="timeline-item">
                            <div class="card card-white grid-margin">
                                <div class="card-body">
                                    <div class="timeline-item-header">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" />
                                        <p>Vikash smith <span>posted a status</span></p>
                                        <small>3 hours ago</small>
                                    </div>
                                    <div class="timeline-item-post">
                                        <p>Elavita veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur.</p>
                                        <div class="timeline-options">
                                            <a href="#"><i class="fa fa-thumbs-up"></i> Like (15)</a>
                                            <a href="#"><i class="fa fa-comment"></i> Comment (4)</a>
                                            <a href="#"><i class="fa fa-share"></i> Share (6)</a>
                                        </div>
                                        <div class="timeline-comment">
                                            <div class="timeline-comment-header">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" />
                                                <p>Jamara Karle <small>1 hour ago</small></p>
                                            </div>
                                            <p class="timeline-comment-text">Xullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                        </div>
                                        <div class="timeline-comment">
                                            <div class="timeline-comment-header">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" />
                                                <p>Lois Anderson <small>3 hours ago</small></p>
                                            </div>
                                            <p class="timeline-comment-text">Coluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.</p>
                                        </div>
                                        <textarea class="form-control" placeholder="Replay"></textarea>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-item">
                            <div class="card card-white grid-margin">
                                <div class="card-body">
                                    <div class="timeline-item-header">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" />
                                        <p>Veema Walkeror <span>uploaded a photo</span></p>
                                        <small>7 hours ago</small>
                                    </div>
                                    <div class="timeline-item-post">
                                        <p>totam rem aperiam, eaque ipsa quae ab illo inventore</p>
                                        <img src="img/post-img01.jpg" alt="" />
                                        <div class="timeline-options">
                                            <a href="#"><i class="fa fa-thumbs-up"></i> Like (22)</a>
                                            <a href="#"><i class="fa fa-comment"></i> Comment (7)</a>
                                            <a href="#"><i class="fa fa-share"></i> Share (9)</a>
                                        </div>
                                        <div class="timeline-comment">
                                            <div class="timeline-comment-header">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" />
                                                <p>Memila moriya <small>1 hour ago</small></p>
                                            </div>
                                            <p class="timeline-comment-text">Explicabo Nemo enim ipsam voluptatem quia voluptas.</p>
                                        </div>
                                        <textarea class="form-control" placeholder="Replay"></textarea>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-12 col-xl-3">
                <div class="card card-white grid-margin">
                    <div class="card-heading clearfix">
                        <h4 class="card-title">Suggestions</h4>
                    </div>
                    <div class="card-body">
                        <div class="team">
                            <div class="team-member">
                                <div class="online on"></div>
                                <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" />
                            </div>
                            <div class="team-member">
                                <div class="online on"></div>
                                <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" />
                            </div>
                            <div class="team-member">
                                <div class="online off"></div>
                                <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card card-white grid-margin">
                    <div class="card-heading clearfix">
                        <h4 class="card-title">Some Info</h4>
                    </div>
                    <div class="card-body">
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis architecto.</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Row -->
    </div>
    <!-- end page main wrapper -->
    <div class="page-footer">
        <p>Copyright © 2020 Evince All rights reserved.</p>
    </div>
</div>
</div>


    </asp:Content>