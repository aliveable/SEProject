<%-- 
    Document   : SpaceInformation
    Created on : Dec 11, 2017, 2:34:55 PM
    Author     : Littlejab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Space Information</title>
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

        <link href="https://cdn.quilljs.com/1.0.0/quill.snow.css" rel="stylesheet">
        <script src="https://cdn.quilljs.com/1.0.0/quill.js"></script>

    </head>
    <body>
        <header id="brand">
            <%@include file="navbar.jsp"%>
        </header>
        <br>
        <div class="container text-center" style="margin-top: 2%;padding-top: 1%;padding-bottom: 2%">
            <h1>Space Information</h1>
        </div>
        <div class="container" style="border: 2px solid #D3D3D380;padding-bottom: 1%">

            <br>
            <div class="container" style="background: #D3D3D320;padding-bottom: 1%">
                <label style="font-size: 1.5em;padding-top: 1%">Gallery</label>
                <hr>
                <div class="container-gallery" style="overflow-y: scroll; max-height: 850px">
                    <c:forEach var="pic" items="${sessionScope.desc.getPics()}">
                        <c:if test = "${pic != null}">
                            <img src="${pic}">
                        </c:if>
                    </c:forEach>
                </div>
            </div>
            <div class="container" style="margin-top: 2%;padding-top: 1%;float: ">
                <center>
                    <h1>${requestScope.spInfo.getName()}</h1>  
                </center>
            </div>

            <div class="container" style="margin-top: 2%;background: #D3D3D320;padding-top: 1%">
                <h3>Address</h3>
                <hr>
                <div style="max-height: 300px;padding-bottom: 1.5%">
                    <div >


                        <div style="max-height: 300px;overflow-y: scroll">
                            <div style="padding-left: 2%">
                                <span>${requestScope.spInfo.getAddress()}</span>
                            </div>

                            <div style="padding-left: 2%">
                                <span>District : ${requestScope.spInfo.getDistrict()}</span> 
                            </div>
                            <div style="padding-left: 2%">
                                <span>Province : ${requestScope.spInfo.getProvince()}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container" style="margin-top: 2%;background: #D3D3D320;padding-top: 1%;padding-bottom: 1.5%">
                <div >
                    <h3>Description</h3>
                    <hr>
                    <div style="max-height: 300px;overflow-y: scroll;">

                        <style>
                            #toolbar {
                                display: none;
                            }
                        </style>

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
                    </div>

                </div>
            </div>
            <div class="container" style="margin-top: 2%;background: #D3D3D320;padding-top: 1%;padding-bottom: 1%">
                <label style="font-size: 1.5em;">What's Include </label>
                <hr>
                <div style="overflow-y: scroll; max-height: 300px;margin-bottom: 1.5%">
                    <ul>
                        <c:forEach var="row" items="${requestScope.RTR.getRightToRecives()}">
                            <li>${row.space_text}</li>
                            </c:forEach>
                    </ul>

                </div>
            </div>

            <div class="container" style="margin-top: 2%;background: #D3D3D320;padding-top: 1%;padding-bottom: 1.5%">
                <label style="font-size: 1.5em">Provider Info </label>
                <hr>
                <div style="max-height: 350px;overflow-y: scroll">
                    <form action="Edit_Profile" method="POST" class="form-horizontal" role="form">

                        <div class="form-group">

                            <label class="col-lg-3 control-label" name="first_name">First name:</label><span>${requestScope.spInfo.getFirst_name()}</span>
                            <div class="col-lg-8">

                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label">Last name:</label><span>${requestScope.spInfo.getLast_name()}</span>
                            <div class="col-lg-8">

                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label">Email:</label><span>${requestScope.spInfo.getEmail()}</span>
                            <div class="col-lg-8">

                            </div>
                        </div> <div class="form-group">

                            <label class="col-lg-3 control-label">Address:</label><span>${requestScope.spInfo.getProvider_address()}</span> 
                            <span>District: </span><span>${requestScope.spInfo.getProvider_district()}</span> 

                            <label class="col-lg-11 control-label">
                                <label class="col-lg-3 control-label"></label>
                                <span> Sub-District:</span> <span>${requestScope.spInfo.getProvider_sub_district()}</span>
                            </label>
                            <label class="col-lg-11 control-label">
                                <label class="col-lg-3 control-label"></label>
                                <span>Province:</span> <span>${requestScope.spInfo.getProvider_province()}</span>
                            </label>
                            <label class="col-lg-11 control-label">
                                <label class="col-lg-3 control-label"></label>
                                <span>Zip-Code:</span> <span>${requestScope.spInfo.getProvider_postal_code()}</span>
                            </label>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Phone:</label><span>${requestScope.spInfo.getPhone()}</span>
                        </div>
                    </form>

                </div>
                <br>
            </div>
            <br>
            <div class="container" style="background: #D3D3D320;padding-top: 1%;">
                <div class="container">
                    <h2>Package</h2>

                </div>
                <hr>
                <div class="container" >
                    <div class="row" style="overflow-y: scroll;max-height: 450px;">

                        <div  class="col col-lg-12" >

                            <c:forEach var="row" items="${requestScope.pkInfo.getPkInfo()}">
                                <div class="row" style="border: 2px solid #D3D3D3f0;padding-top: 1%; padding-bottom: 1%; padding-right: 1%">
                                    <div class="col-lg-3">
                                        <img src="${row.getPics(0)}" width="250">
                                    </div>
                                    <div class="col-lg-9" style="background: #D3D3D330">
                                        <br>
                                        <li>Name  : <span>${row.name}</span></li>
                                        <li>Price : <span>${row.price}$</span></li>
                                        <div class="container" style="margin-top: 2%;background: #D3D3D320;padding-top: 1%;padding-bottom: 1.5%">
                                            <label>Description</label>
                                            <div style="max-height: 300px;overflow-y: scroll;">
                                                <style>
                                                    #toolbar {
                                                        display: none;
                                                    }
                                                </style>

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
                                                <div id="editor${row.package_id}" style="height: 100px">
                                                </div>
                                            </div>
                                            <script>
                                                var BackgroundClass = Quill.import('attributors/class/background');
                                                var ColorClass = Quill.import('attributors/class/color');
                                                var SizeStyle = Quill.import('attributors/style/size');
                                                Quill.register(BackgroundClass, true);
                                                Quill.register(ColorClass, true);
                                                Quill.register(SizeStyle, true);
                                                var quill = new Quill('#editor${row.package_id}', {
                                                    modules: {
                                                        toolbar: '#toolbar'
                                                    },
                                                    theme: 'snow'
                                                });
                                                quill.setContents(${row.desc});
                                                quill.disable();
                                            </script>
                                        </div>
                                    </div>
                                    <div class="container text-right" style="margin-top: 1%">
                                        <a href="PackageInformation?package=${row.package_id}" role="button" class="btn btn-success">View Package</a>
                                    </div>
                                    <hr>
                                </div>
                                <hr>
                            </c:forEach>

                        </div>

                    </div>


                </div>

            </div>
            <br>
            <br> 
        </div>                     
        <script src="//code.jquery.com/jquery.min.js"></script>
        <script src='JS/gallery.js'></script>
        <script>
                                                $('#pak1').css("border", "3px solid bule");
        </script>
        <script>

            $('.container-gallery').gallery({
                height: 700,
                width: 500,
                items: 5,
                480: {
                    items: 2,
                    height: 400,
                    thmbHeight: 100},
                768: {

                    items: 3,
                    height: 500,
                    thmbHeight: 120
                },
                600: {

                    items: 4
                },
                992: {

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
                theme: 'snow'
            });
            quill.setContents(${requestScope.spInfo.getDesc()});
            quill.disable();
        </script>


        <br>
    </body>
</html>