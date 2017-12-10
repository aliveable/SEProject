<%-- 
    Document   : editRightToRecive
    Created on : Dec 10, 2017, 12:55:02 PM
    Author     : 58070012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Right To Receive Edit</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

        <link rel="stylesheet" href="cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css">

        <link href="https://cdn.quilljs.com/1.0.0/quill.snow.css" rel="stylesheet">

        <link rel="stylesheet" type="text/css" href="CSS/Css1.css">
        <link rel="stylesheet" type="text/css" href="CSS/createService.css">
        <link rel="stylesheet" type="text/css" href="CSS/gallery.css">

        <!-- jQuery library -->
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

        

        <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

        <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>

    </head>
    <body>
        <header id="brand">
            <nav class="navbar navbar-expand-lg" id="header">

                <a class="navbar-brand" href="#" >Navbar</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav  mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Dropdown
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="#">Disabled</a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav mr-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                                <span class="user-name">
                                    John Doe
                                </span>

                                <b class="caret"></b></a>
                            <ul class="dropdown-menu dropdown-menu-right">

                                <div class="navbar-content">


                                    <div class="row">


                                        <div class="col-md-7">
                                            <span>John Doe</span>
                                            <p class="text-muted small">
                                                example@pods.tldddd</p>
                                            <div class="divider">
                                                <li>
                                                    <div>

                                                        <a href="./56ExR" class="btn btn-default btn-xs"><i class="fa fa-user-o" aria-hidden="true"></i> Profile</a>

                                                    </div>
                                                </li>
                                                <li>
                                                    <div>

                                                        <a href="#" class="btn btn-default btn-xs"><i class="fa fa-address-card-o" aria-hidden="true"></i> Service</a>

                                                    </div>
                                                </li>
                                                <li>     
                                                    <div>

                                                        <a href="#" class="btn btn-default btn-xs"><i class="fa fa-cogs" aria-hidden="true"></i> Use our service</a>

                                                    </div>
                                                </li>
                                                <li>
                                                    <div>

                                                        <a href="#" class="btn btn-default btn-xs"><i class="fa fa-question-circle-o" aria-hidden="true"></i> Message</a>

                                                    </div>
                                                </li>
                                                <li>
                                                    <div>

                                                        <a href="#" class="btn btn-default btn-xs"><i class="fa fa-question-circle-o" aria-hidden="true"></i> Sign-out</a>

                                                    </div>
                                                </li>
                                            </div>

                                        </div>

                                    </div>

                            </ul>

                        </li>
                    </ul>
                </div>

            </nav>

        </header>
        <br>
        <br>
        <br>
        <div class="container" style="background: #D3D3D320">
            <h1 style="padding-top: 1%;">Right To Receive</h1>
            <hr>
            <div>
                <div class="row" style="margin-top: 1%">
                    <div class="col-md-7" style="">
                        <ul style="font-size: 1.8em;overflow-x: scroll">Test:____________________________________</ul>
                    </div>

                    <div class="">
                        <button id="edititem1" type="button" class="btn btn-success" style="margin-left: 2%"> Edit</button>
                    </div>
                </div>
                <div class="row" style="margin-top: 1%">
                    <div class="col-md-7" style="">
                        <ul style="font-size: 1.8em;overflow-x: scroll">Test:____________________________________</ul>
                    </div>

                    <div class="">
                        <button id="edititem2" type="button" class="btn btn-success" style="margin-left: 2%"> Edit</button>
                    </div>
                </div>
            </div>
            <br>
            <div class="">
                <button id="additem" type="button" class="btn btn-success" style="margin-left: 2%"> Add item</button>
            </div>
            <br>
        </div>
        
        <div class="modal fade" id="editmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Edit</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label for="recipient-name" class="form-control-label">Right To Receive:</label>
                                <input type="text" class="form-control" id="recipient-name">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" data-dismiss="modal">Add/Change</button>
                        <button type="button" class="btn btn-danger">Delete</button>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="modal fade" id="addmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Edit</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label for="recipient-name" class="form-control-label">Right To Receive:</label>
                                <input type="text" class="form-control" id="recipient-name">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" data-dismiss="modal">Add/Change</button>
                        
                    </div>
                </div>
            </div>
        </div>
        
        <script type="text/javascript" src="JS/editRightToReceiveModal.js"></script>
            
    </body>
</html>
