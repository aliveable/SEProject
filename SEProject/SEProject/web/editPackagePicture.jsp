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

        <link rel="stylesheet" type="text/css" href="CSS/createService.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

        <script src="JS/editPackagePicture.js"></script>
    </head>

    <body>
        <header id="brand">
            <%@include file="navbar.jsp"%>
        </header>
        <div class="col" style="padding-top: 2%">
            <div class="row">
                <div class="col col-lg-12 text-center">
                    <h1>Edit Picture</h1>
                </div>
            </div>
        </div>
        <div class="col-lg-12" style="padding-top: 2%">
            <div class="container" style=";border: 1px solid black; padding: 2%">
                <form id="form-remove" action="" method="post">
                    <c:forEach var="pic" items="${sessionScope.desc.getPics()}">
                        <c:if test = "${pic != null}">
                            <div>
                                <img src="${pic}">
                                <button class="btn btn-danger" type="submit" name="path" value="${pic}" onclick="return removeConfirm(this.value)">Remove</button>
                            </div><br>
                        </c:if>
                    </c:forEach>
                </form>

                <br>Select a file to upload: <br>
                <form action="UploadPicture" method="post" enctype="multipart/form-data">
                    <input id="input-upload" type="file" name="file" accept="image/*" multiple />
                    <br>
                    <button id="btn-upload" type="submit" class="btn btn-success" style="margin-top: 1%" disabled>Upload</button>
                </form>
            </div>
        </div>
    </body>
</html>
