<%-- 
    Document   : testgalerry
    Created on : Dec 12, 2017, 2:19:24 AM
    Author     : 58070012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit package</title>
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
        <br>
        <div class="container" style="border: 2px solid #D3D3D380;padding-bottom: 1%">
            <div class="container text-center">
                <h1> Edit Package </h1>

            </div>

            <hr>
            <br>
            <div class="container" style=";padding-bottom: 1%">

                <div class="container" style="margin-top: 2%;background: #D3D3D320;padding-top: 1%;" >
                    <div class="row" style="margin-left: 1%"> 
                        <div>
                            <label style="font-size: 1.5em;">Package Name: </label>
                        </div>
                        <div style="padding-left: 1%">
                            <input class="form-control" type="text" value="${package.name}">
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
            </div>
                    <div class="container" style="margin-left: 1%;padding-bottom: 1%">
                            <div class="row"> 
                                <div>
                                    <label style="font-size: 1.5em">ราคา: </label>
                                </div>
                                <div style="padding-left: 1%">
                                    <input class="form-control" type="text" name="price" value="${package.price}">

                                </div>
                                <div style="padding-left: 1%">
                                    <label style="font-size: 1.5em" >บาทต่อคนในหนึ่งชม </label>
                                </div>
                            </div>

                            <div class="row">
                                <div>
                                    <label style="font-size: 1.5em">ต้องจองก่อน</label>
                                </div>
                                <div style="padding-left: 1%">
                                    <input class="form-control" type="number" name="before" min="0" value="${package.reserve_before}">

                                </div>
                                <div style="padding-left: 1%">
                                    <label style="font-size: 1.5em" >ชมก่อนถึงเวลา</label>
                                </div>
                                &nbsp;&nbsp;&nbsp;
                                <div>
                                    <label style="font-size: 1.5em">รองรับได้สูงสุด</label>
                                </div>
                                <div style="padding-left: 1%">
                                    <input class="form-control" type="number" name="max" min="1" value="${package.size}">

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
                                    <input class="form-control" type="time" name="open_time" value="package.open">

                                </div>
                                <div style="padding-left: 1%">
                                    <label style="font-size: 1.5em"></label>
                                </div>
                                &nbsp;&nbsp;&nbsp;
                                <div>
                                    <label style="font-size: 1.5em">เวลาปิดทำการ</label>
                                </div>
                                <div style="padding-left: 1%">
                                    <input class="form-control" type="time" name="close_time" value="package.close">

                                </div>
                                <div style="padding-left: 1%">
                                    <label style="font-size: 1.5em"></label>
                                </div>
                            </div>
                        </div>
                <br>
                <div class="container" style="background: #D3D3D320">
                    <label style="font-size: 1.5em;padding-top: 1%">Gallery</label>
                    <hr>
                    <div class="container-gallery" style="overflow-y: scroll; max-height: 850px">

                        <c:forEach var="pic" items="${sessionScope.package.getPics()}">
                            <img src="${pic}">
                        </c:forEach>
                    </div>

                    <div class="container" style="float: left">
                        <div class="form-group"  >
                            <form action="EditPackagePicture" method="post">
                                <button type="submit" class="btn btn-success" style="margin-top: 1%">Edit</button>
                            </form>
                        </div>
                    </div>
                    <br>
                    <br>
                    <br>
                </div>
                <br>
                <br>
                <div id="addItemContainer" class="container addinc" style="background: #D3D3D320">
                    <h1 style="padding-top: 1%;">Include</h1>
                    <hr>
                    <div class="row" id="addItemContainer">

                    </div>

                    <br>
                    <div class="">
                        <button id="additemincludebutton" type="button" class="btn btn-success" style="margin-left: 2%"> Add item</button>
                    </div>
                    <br>
                </div>

                <br>
                <br>
                <div id="addItemContainerOptional" class="container" style="background: #D3D3D320">
                    <h1 style="padding-top: 1%;">Optional</h1>
                    <hr>
                    <div class="row" id="addItemContainerOptional">

                    </div>

                    <br>
                    <div class="">
                        <button id="additemoptional" type="button" class="btn btn-success" style="margin-left: 2%">Add item</button>
                    </div>
                    <br>
                </div>
                <br>
                <br>
                <div class="container">
                    <button id="addpackagecreate" type="submit" class="btn btn-success" style="margin-left: 2%;float: right">Update</button>

                </div>    
                <br>

            </div>

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
            quill.setContents(${requestScope.package.desc});
            $(document).ready(function () {
                $("#createService").submit(function () {
                    $(this).append("<input type='hidden' name='contents' value='"+
                         JSON.stringify(quill.getContents())+"' />");
                });
            });
        </script>
    </body>
    <br>
</html>
