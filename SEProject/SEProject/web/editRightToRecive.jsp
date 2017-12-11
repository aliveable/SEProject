<%-- 
    Document   : editRightToRecive
    Created on : Dec 10, 2017, 12:55:02 PM
    Author     : 58070012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <%@include file="navbar.jsp" %>
        </header>
        <br>
        <br>
        <br>
        <div class="container" style="background: #D3D3D320">
            <h1 style="padding-top: 1%;">Right To Receive</h1>
            <hr>
            <div>
                <c:forEach var="row" items="${requestScope.RTR.getRightToRecives()}">
                    <form action="editRTR?spacelistid=${row.space_list_id}&id=${row.space_id}" method="post">
                <div class="row" style="margin-top: 1%">
                    <div class="col-md-7" style="">
                        <input pattern="{1,100}"style="font-size: 1.8em;overflow-x: scroll" class="form-control" type="text" name="item" placeholder="" id="space_text" value="${row.space_text}">
                    </div>
                    <button type="submit" class="btn btn-success" style="margin-left: 2%">update</button>
                    <a type="button" class="btn btn-success" style="margin-left: 2%" href="removeRTR?spacelistid=${row.space_list_id}&id=${row.space_id}">remove</a>
                </div> 
                    </form>
                </c:forEach>
            </div>
                <br>
                <form action="newRTR?id=${requestScope.id}" method="post">
            <div class="row" style="margin-top: 1%">
                    <div class="col-md-7" style="">
                        <input pattern="{1,100}"style="font-size: 1.8em;overflow-x: scroll" class="form-control" type="text" name="item" placeholder="" id="space_text" value="">
                    </div>
                </div>
                <br>
            <div class="">
                <button id="additem" type="submit" class="btn btn-success" style="margin-left: 2%">add Item</button>
                <a type="button" class="btn btn-success" style="margin-left: 2%" href="./MyServiceInformation?id=${requestScope.id}">back</a>
            </div>
            <br>
                </form>
            
        </div>        
        <script type="text/javascript" src="JS/editRightToReceiveModal.js"></script>
            
    </body>
</html>
