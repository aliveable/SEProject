<%-- 
    Document   : PackageInformation
    Created on : Dec 11, 2017, 5:23:12 PM
    Author     : Littlejab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Package information</title>
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

        <div class="container" style="border: 2px solid #D3D3D370;padding-bottom: 1%">
            <div class="container text-center" style="margin-top: 2%;padding-top: 1%">
                <h1>Package Information</h1>
            </div>
            <hr>
            <br>
            <form action="" method="post">
            <div class="container" style="background: #D3D3D320;padding-top: 1%;padding-bottom: 1%">
                <label style="font-size: 2em">Gallery</label>
                <hr>
                <div class="container-gallery" style="overflow-y: scroll; max-height: 800px">
                    <c:forEach var="pic" items="${requestScope.pkInfo.getPics()}">
                        <c:if test = "${pic != null}">
                            <img src="${pic}">
                        </c:if>
                    </c:forEach>
                </div>
            </div>
            <hr>
            <div class="container" style="margin-top: 2%;padding-top: 1%;float: ">
                <center>
                    <h1>${requestScope.pkInfo.getName()}</h1>  
                </center>
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

            <div class="container" style="margin-top: 2%;background: #D3D3D320;padding-top: 1%">
                <label style="font-size: 1.5em">
                    Price: ${requestScope.pkInfo.getPrice()} Baht/Hr<br>
                    You must reserve ${requestScope.pkInfo.getReserve_before()} hour(s) before the time.<br>
                    Open: ${requestScope.pkInfo.getOpen()} Close: ${requestScope.pkInfo.getClose()} <br>
                </label>
            </div>

            <div class="container" style="margin-top: 2%;background: #D3D3D320;padding-top: 1%;padding-bottom: 1%;">
                <label style="font-size: 1.5em">What's Include </label>
                <hr>
                <div style="overflow-y: scroll; max-height: 300px">
                    <ul>
                        <c:forEach var="var" items="${requestScope.inc.getIncludes()}">
                        <li>${var.package_text}</li>
                        </c:forEach>
                    </ul>
                </div>
            </div>

            <div class="container" style="margin-top: 2%;background: #D3D3D320;padding-top: 1%;padding-bottom: 1%;">
                <label style="font-size: 1.5em">Option </label>
                <hr>
                <div  style="overflow-y: scroll; max-height: 300px">
                    
                        <c:forEach var="var" items="${requestScope.opt.getIncludes()}">
                            <div class="container form-group">
                                <label class="custom-control custom-checkbox">
                                    <input id="radio1" name="optional" type="checkbox" class="custom-control-input" value="${var.package_list_id}">
                                    <span class="custom-control-indicator"></span>
                                    <span class="custom-control-description">${var.package_text} Price : ${var.package_list_price}</span>
                                </label>
                            </div>
                        </c:forEach>
                    
                </div>
            </div>
                <button type="submit" class="btn btn-success">จองเวลาเลย</button>
            </form>
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
            quill.setContents(${requestScope.pkInfo.getDesc()});
            quill.disable();
        </script>
        <br>
    </body>
</html>
