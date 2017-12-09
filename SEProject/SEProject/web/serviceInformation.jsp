<%-- 
    Document   : serviceInformation
    Created on : Dec 9, 2017, 9:00:24 PM
    Author     : 58070012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bootstrap Example</title>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

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
        <div class="col" style="padding-top: 2%">
            <div class="row">
                
                <div class="col col-lg-12 text-center">
                    <h1>Service Information</h1>
                </div>
            </div>
            
        </div>
        

        <div class="col-lg-12" style="padding-top: 2%">
            <div class="container" style=";border: 1px solid black; padding: 2%">
                <div class="col" style="padding-top: 1%;padding-bottom: 1%">
                    <div class="row ">
                        <div class="col-lg-5 ">
                            <h3 class="text-center" style="float: left">Status : _________________</h3>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-lg-5" style="background: #D3D3D320">
                        <h2>Name</h2>
                        <hr>
                        <br>
                        
                        <div >
                            <div >
                                <h3>Address</h3>
                                <hr>
                                <div style="max-height: 300px;overflow-y: scroll">
                                    <div style="padding-left: 2%">
                                        <span>232 ladkrabang 52</span>
                                    </div>

                                    <div style="padding-left: 2%">
                                        <span>district : ladkrabang</span> 
                                    </div>

                                    <div style="padding-left: 2%">
                                        <span>sub-district : ladkarabang</span>
                                    </div>
                                </div>
                                

                            </div>
                            
                           
                            
                        </div>
                            <br>
                            <br>
                            <hr>
                            <br>
                            <br>
                            
                            <div >
                                <h3>Description</h3>
                                <hr>
                                <div style="max-height: 300px;overflow-y: scroll">
                                    <h3>Address</h3>
                                    <h3>Address</h3>
                                    <h3>Address</h3>
                                    <h3>Address</h3>
                                    <h3>Address</h3>
                                    <h3>Address</h3>
                                </div>
                                
                            </div>
                        <hr>
                        <div class="col col-xs-1">   </div>
                        <div class="col col-xs-1">   </div>
                        <br>
                        <div class="container" style="float: left">
                            <div class="form-group"  >
                                <button type="button" class="btn btn-success" style="margin-top: 1%">Edit</button>
                            </div>
                        </div>
                    </div>
                    <div class="col col-xs-1">   </div>
                    
                    <div class="col-lg-6" style="background:#D3D3D320">
                        <h3>List</h3>
                        <hr>
                        
                        <div style="overflow-y: scroll; max-height: 300px">
                            <ul>
                                <li>Test1</li>
                                <li>Test2</li>
                                <li>Test3</li>
                                <li>Test4</li>
                            </ul>
                       
                        </div>
                        <br>
                        <div class="form-group"  >
                            <button type="button" class="btn btn-success" style="margin-bottom: 1%">Edit</button>
                        </div>
                        <hr>
                        <h3>Picture</h3>
                        <br>
                        <div class="container-gallery" style="overflow-y: scroll; max-height: 400px">
                            
                                <img src="http://placekitten.com/220/200" value="1">
                                <img src="http://placekitten.com/180/200" value="2">
                                <img src="http://placekitten.com/130/200" value="3">
                                <img src="http://placekitten.com/270/200" value="4">
                            

                        </div>
                        <div class="container" style="float: left">
                            <div class="form-group"  >
                                <button type="button" class="btn btn-success" style="margin-top: 1%">Edit</button>
                            </div>
                        </div>

                </div>

            </div>
            
            
                <br>
                <br>
                <hr>
            <div class="container" style="background: #D3D3D320">
                <div class="container">
                    <h2>Package</h2>
                    
                </div>
                <hr>
                
                <div class="container" >
                    <div class="row">
                    
                        <div  class="col col-lg-12" style="border:1px #555 solid;overflow-y: scroll;max-height: 350px">
                            
                            <div class="row">
                                <div class="col-lg-4">
                                    <img src="http://placekitten.com/220/200" value="1">
                                </div>
                                <div class="col-lg-7">
                                    <br>
                                    
                                        <li>Name  : <span>Test1</span></li>
                                        <li>Price : <span>20$</span></li>
                                    
                                    <div>
                                        <label>Description</label>
                                        <li>asdadsadadasdasdasd
                                        asdasdasdasd
                                        asdadsasdasd</li>
                                    </div>


                                    
                                </div>
                                
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-lg-4">
                                    <img src="http://placekitten.com/220/200" value="1">
                                </div>
                                <div class="col-lg-7">
                                    <br>
                                    
                                        <li>Name  : <span>Test1</span></li>
                                        <li>Price : <span>20$</span></li>
                                    
                                    <div>
                                        <label>Description</label>
                                        <li>asdadsadadasdasdasd
                                        asdasdasdasd
                                        asdadsasdasd</li>
                                    </div>

                                </div>
                                
                            </div>
                            
                            <hr>
                            <div class="row">
                                <div class="col-lg-4">
                                    <img src="http://placekitten.com/220/200" value="1">
                                </div>
                                <div class="col-lg-7">
                                    <br>
                                    
                                        <li>Name  : <span>Test1</span></li>
                                        <li>Price : <span>20$</span></li>
                                    
                                    <div>
                                        <label>Description</label>
                                        <li>asdadsadadasdasdasd
                                        asdasdasdasd
                                        asdadsasdasd</li>
                                    </div>

                                </div>
                                
                            </div>
                            
                        </div>
                    </div>
                    <div class="container" style="float: left">
                            <div class="form-group"  >
                                <button type="button" class="btn btn-success" style="margin-top: 1%;margin-left: -3%;margin-bottom: 20px">Edit</button>
                            </div>
                        </div>

                </div>
                <br>
                <br>
                
            </div>
                <br>
                
        </div>
        <script src="//code.jquery.com/jquery.min.js"></script>
        <script src='JS/gallery.js'></script>
        <script>
            $('#pak1').css("border", "3px solid bule");
        </script>
        <script>
            
           $('.container-gallery').gallery({
                height: 200,
                width:200,
                items: 6,
                480: {
                  items: 2,
                  height: 400,
                  thmbHeight: 100
                },
                768: {

                  items: 3,
                  height: 500,
                  thmbHeight: 120
                },
                600: {

                  items: 4
                },
                992 : {

                  items: 5,
                  height: 350
                }
          });
          
          $('.container-gallery').gallery({
                customControls: {
                  prevButton: prevContent,
                  nextButton: nextContent
                }
          });
          
          
        </script>
        <br>
    </body>
</html>
