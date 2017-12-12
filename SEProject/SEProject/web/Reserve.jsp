<%-- 
    Document   : Reserve
    Created on : Dec 11, 2017, 10:16:01 AM
    Author     : Littlejab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Reserve</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
        
        

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css">
        
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.0-RC3/css/bootstrap-datepicker.css" rel="stylesheet">

        <link href="https://cdn.quilljs.com/1.0.0/quill.snow.css" rel="stylesheet">

        <link rel="stylesheet" type="text/css" href="CSS/Css1.css">
        <link rel="stylesheet" type="text/css" href="CSS/createService.css">


        <!-- jQuery library -->
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>



        <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

        <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.0-RC3/js/bootstrap-datepicker.js"></script>

        <script type="text/javascript" src="JS/CreatepackageModal.js"></script>

    </head>

    <body>

        <header id="brand">
            <%@include file="navbar.jsp"%>
        </header>

        <br>
        <br>
        <form action="CreateServiceServlet" method="POST" class="form-horizontal" role="form" id="createService">


            <br>
            <div class="container" style="border: 2px solid #D3D3D380">

                <div class="container" style="margin-top: 1%;">
                    <h1> Reserve </h1>
                </div>
                <hr>

                <div class="container" style="margin-top: 2%;background: #D3D3D320;padding-top: 1%;margin-right: 1%" >

                    <div class="row" style="margin-left: 1%"> 

                        <div>
                            <label style="font-size: 1.5em;">Select Date: </label>
                        </div>

                        <div style="padding-left: 1%">
                            <input id="Day" class="form-control" type="text" placeholder="Day" data-provide="datepicker">
                        </div>

                        <div style="padding-left: 1%">
                            <button id="addpackagecreate" type="submit" class="btn btn-success" >Select</button>
                        </div>

                    </div>

                </div>

                <br>

                <div class="container col-md-12" >

                    <div class="row ">

                        <div class="col-lg-5" style="background: #D3D3D320">

                            <h1>Select Time</h1>
                            <hr>
                            <div class="row">

                                <div class="col-lg-5">
                                    <select class="custom-select">
                                        <option selected>Select time</option>
                                        <option value="9:00 - 10:00">9:00 - 10:00</option>
                                        <option value="10:00 - 11:00">10:00 - 11:00</option>
                                        <option value="11.00 - 12.00">11.00 - 12.00</option>
                                    </select>

                                </div>

                                <div class="col-lg-3">
                                    <label style="font-size: 1.6em">People:</label>
                                </div>

                                <div class="container col-lg-4">
                                    <input class="form-control" type="text">
                                </div>

                            </div>

                            <div style="margin-top: 1%">
                                <button id="addpackagecreate" type="submit" class="btn btn-success" >Select</button>
                            </div>

                        </div>
                        <div class="col-lg-1"></div>

                        <div class="col-lg-6" style="float: right;background: #D3D3D320;">

                            <h1>Selected Time</h1>
                            <hr>
                            <div class="container col-lg-12">
                                <div class="row" style="border: 2px solid #D3D3D3f0;padding-top: 1.5%">
                                    <div class="col-lg-4">
                                        <label style="font-size: 1.6em" >9:00 - 10:00</label> 
                                    </div>

                                    <div class="col-lg-4">
                                        <label style="font-size: 1.6em">5</label> <label style="font-size: 1.6em">People</label> 

                                    </div>

                                    <div class="col-lg-4">
                                        <button  id="addpackagecreate" type="submit" class="btn btn-danger mr-right" style="float: right">Remove</button>
                                    </div>
                                </div>
                            </div>


                            <br>

                            <br>
                        </div>

                    </div>
                    <br>
                    <br>

                    <div class="row" style="background: #D3D3D320">
                        <label style="font-size: 1.5em; margin-left: 2%;padding-top: 1%">Total Price:_____________Baht</label>

                    </div>

                    <br>
                    <br>
                    <br>

                    <div class="container">
                        <button id="addpackagecreate" type="submit" class="btn btn-success" style="margin-left: 2%;float: right">Reserve</button>
                        <button id="addpackagecancel" type="button" class="btn btn-danger" style="margin-left: 2%;float: right">Cancel</button>
                    </div>

                    <br>
                    <br>

                </div>
                <!----------------------------------------------------------------------------------------------------------------------------->

                <div class="modal fade" id="editmodalinclude" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                        <label for="recipient-name" class="form-control-label">Privilage:</label>
                                        <input type="text" class="form-control" id="recipient-name-include-edit">
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-success" data-dismiss="modal">Change</button>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="modal fade" id="additemincludemodel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Add</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-group">
                                        <label for="recipient-name" class="form-control-label">Privilege:</label>
                                        <input type="text" class="form-control" id="recipient-name-include-add">
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="addItem()">Add</button>

                            </div>
                        </div>
                    </div>
                </div>
                <!-------------------------------------------------------------------------------------------------------------------------------->
                <div class="modal fade" id="editmodaloptional" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                        <label  class="form-control-label">Optional:</label>
                                        <input type="text" class="form-control" id="recipient-name-edit">
                                    </div>
                                    <div class="form-group">
                                        <label  class="form-control-label">Price:</label>
                                        <input type="text" class="form-control" id="recipient-price-edit">
                                    </div>
                                    <div class="form-group">
                                        <label  class="form-control-label">Max:</label>
                                        <input type="text" class="form-control" id="recipient-max-edit">
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-success" data-dismiss="modal">Change</button>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="modal fade" id="additemoptionalmodel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Add</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-group">
                                        <label for="recipient-name" class="form-control-label">Optional:</label>
                                        <input type="text" class="form-control" id="recipient-name">
                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="form-control-label">Price:</label>
                                        <input type="text" class="form-control" id="recipient-price">
                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="form-control-label">Max:</label>
                                        <input type="text" class="form-control" id="recipient-max">
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button onClick="addItemOptional()" id="addmodalbtn" type="submit" class="btn btn-success" data-dismiss="modal">Add</button>
                            </div>
                        </div>
                    </div>
                </div>

        </form>
        <br>
        <br>

        <script src="https://cdn.quilljs.com/1.0.0/quill.js"></script>
        <!-- Initialize Quill editor -->
        <script>
                                    var BackgroundClass = Quill.import('attributors/class/background');
                                    var ColorClass = Quill.import('attributors/class/color');
                                    var SizeStyle = Quill.import('attributors/style/size');
                                    Quill.register(BackgroundClass, true);
                                    Quill.register(ColorClass, true);
                                    Quill.register(SizeStyle, true);

                                    var quill = new Quill('#editor', {
                                        modules: {
                                            toolbar: '#toolbar'
                                        },
                                        placeholder: 'Example',
                                        theme: 'snow'
                                    });

                                    $(document).ready(function () {
                                        $("#createService").submit(function () {
                                            $(this).append("<input type='hidden' name='contents' value='" +
                                                    JSON.stringify(quill.getContents()) + "' />");
                                        });
                                    });


        </script>
        
        <script type="text/javascript">
            $(document).ready(function (){
               
                
                $('#Date').datepicker({
                    minViewMode: 0,
                    format: 'DD/mm/yyyy'
                });
              
            });
            
        </script>
    </body>
</html>
