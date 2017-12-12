<%-- 
    Document   : CreatePackage
    Created on : Dec 10, 2017, 2:36:23 PM
    Author     : Littlejab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css">

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



    </head>

    <body>

        <header id="brand">
            <%@include file="navbar.jsp"%>
        </header>

        <br>
        <br>
        <div>
            <form action="CreatePackageServlet" method="POST" class="form-horizontal" role="form" id="createService">
                <div class="container">
                    <h1> Create Package </h1>
                </div>
                <hr>
                <br>
                <div class="container" style="border: 1px solid black">
                    <div class="container" style="margin-top: 2%;background: #D3D3D320;padding-top: 1%;" >
                        <div class="row" style="margin-left: 1%"> 
                            <div>
                                <label style="font-size: 1.5em;">Package Name: </label>
                            </div>
                            <div style="padding-left: 1%">
                                <input class="form-control" type="text" name="name" >
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="container" style="background: #D3D3D320">
                        <div class="form-group">
                            <h1 style="padding-top: 2%">Description</h1>
                        </div>
                        <hr>
                        <div class="col-lg-12">
                            <!-- Create the toolbar container -->
                            <div class="form-group">
                                <div id="toolbar">
                                    <button class="ql-bold">Bold</button>
                                    <span class="ql-formats">
                                        <select class="ql-size">
                                            <option value="10px">Small</option>
                                            <option selected>Normal</option>
                                            <option value="18px">Large</option>
                                            <option value="32px">Huge</option>
                                        </select>
                                    </span>
                                </div>
                                <!-- Create the editor container -->
                                <div id="editor" style="height: 500px">
                                </div>
                                <br>
                                <!-- Include the Quill library -->
                            </div>
                        </div>

                        <div class="container" style="margin-left: 1%;padding-bottom: 1%">
                            <div class="row"> 
                                <div>
                                    <label style="font-size: 1.5em">ราคา: </label>
                                </div>
                                <div style="padding-left: 1%">
                                    <input class="form-control" type="text" name="price" value="${sessionScope.desc.getId()}">

                                </div>
                                <div style="padding-left: 1%">
                                    <label style="font-size: 1.5em" >บาทต่อคนในหนึ่งชม </label>
                                </div>
                                &nbsp;&nbsp;&nbsp;
                                <div>
                                    <label style="font-size: 1.5em">ต้องชำระเงินภายใน</label>
                                </div>
                                <div style="padding-left: 1%">
                                    <input class="form-control" type="number" name="under" min="1" value="1">

                                </div>
                                <div style="padding-left: 1%">
                                    <label style="font-size: 1.5em" >ชม</label>
                                </div>
                            </div>

                            <div class="row">
                                <div>
                                    <label style="font-size: 1.5em">ต้องจองก่อน</label>
                                </div>
                                <div style="padding-left: 1%">
                                    <input class="form-control" type="number" name="before" min="0" value="0">

                                </div>
                                <div style="padding-left: 1%">
                                    <label style="font-size: 1.5em" >ชมก่อนถึงเวลา</label>
                                </div>
                                &nbsp;&nbsp;&nbsp;
                                <div>
                                    <label style="font-size: 1.5em">รองรับได้สูงสุด</label>
                                </div>
                                <div style="padding-left: 1%">
                                    <input class="form-control" type="number" name="max" min="1" value="1">

                                </div>
                                <div style="padding-left: 1%">
                                    <label style="font-size: 1.5em">คน</label>
                                </div>
                            </div>
                            <div class="row">
                                <div>
                                    <label style="font-size: 1.5em">เวลาเปิดทำการ</label>
                                </div>
                                <div style="padding-left: 1%">
                                    <input class="form-control" type="time" name="open_time">

                                </div>
                                <div style="padding-left: 1%">
                                    <label style="font-size: 1.5em"></label>
                                </div>
                                &nbsp;&nbsp;&nbsp;
                                <div>
                                    <label style="font-size: 1.5em">เวลาปิดทำการ</label>
                                </div>
                                <div style="padding-left: 1%">
                                    <input class="form-control" type="time" name="close_time">

                                </div>
                                <div style="padding-left: 1%">
                                    <label style="font-size: 1.5em"></label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>


                    <div class="container">
                        <button id="addpackagecreate" type="submit" class="btn btn-success" name="space_id" value="${sessionScope.desc.getId()}" style="margin-left: 2%;float: right">Create</button>
                        <button id="addpackagecancel" type="button" class="btn btn-danger" style="margin-left: 2%;float: right">Cancel</button>
                    </div>
                    <br> <br>
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
                            </div>
                            <div class="modal-footer">
                                <button onClick="addItemOptional()" id="addmodalbtn" type="submit" class="btn btn-success" data-dismiss="modal">Add</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <br>
        <br>

        <script type="text/javascript" src="JS/CreatepackageModal.js"></script>

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
    </body>
</html>
