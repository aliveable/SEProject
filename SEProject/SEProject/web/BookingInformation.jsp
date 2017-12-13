<%-- 
    Document   : BookingInformation
    Created on : Dec 13, 2017, 1:43:49 AM
    Author     : 58070012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>Booking Information</title>
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
            <div class="container" style="background: #D3D3D310;margin-top: 1%">
                <h1 style="padding-top: 1%">Booking Information</h1>
                <hr>
                <div class="row ">

                    <div class="container col-lg-12" style="margin-bottom: 1%; margin-top: 1%">
                        <div class="row">

                            <div class="col-lg-6">
                                <h3>Id                 : ${requestScope.reserve.reserve_id}</h3>
                            </div>
                            <div class="col-lg-6">
                                <h3>Space              : ${requestScope.reserve.spacename}</h3> 
                            </div>

                        </div>
                    </div>

                    <div class="container col-lg-12" style="margin-bottom: 1%; margin-top: 1%">
                        <div class="row">

                            <div class="col-lg-6">
                                <h3>Service Provider   : ${requestScope.reserve.pname}</h3>
                            </div>
                            <div class="col-lg-6">
                                <h3>Package Name       : ${requestScope.reserve.packagename}</h3> 
                            </div>

                        </div>
                    </div>

                    <div class="container col-lg-12" style="margin-bottom: 1%; margin-top: 1%">
                        <div class="row">

                            <div class="col-lg-6">
                                <h3>Total price   : ${requestScope.reserve.reserve_price} $</h3>
                            </div>
                            <div class="col-lg-6">
                                <h3>Booking Time       : ${requestScope.reserve.reserve_time}</h3> 
                            </div>

                        </div>
                    </div>
                    
                    <div class="container col-lg-12"style="margin-bottom: 1%; margin-top: 1%">
                        
                        <div class="row">
                            
                            <div class="container col-lg-6">
                                
                                <div class="">
                                    <h3>Can Book Through   : </h3>
                                </div>
                                <div>
                                    <ul><c:forEach var="row" items="${requestScope.reserve.getReservetimes()}">
                                        <li style="font-size: 1.5em">${row.reserve_time_firsthour} - ${row.reserve_time_lasthour}</li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class="container col-lg-6">
                                
                                <div class="">
                                    <h3>People at a time   : </h3>
                                </div>
                                <div>
                                    <ul><c:forEach var="row" items="${requestScope.reserve.getReservetimes()}">
                                        <li style="font-size: 1.5em">${row.reserve_size}</li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>

                        </div>
                        
                    </div>
                    
                    <div class="container col-lg-12" style="margin-bottom: 1%; margin-top: 1%">
                        <div class="row">
                            <div class="container col-lg-6">
                                <div class="">
                                    <h3>Include  : </h3>
                                </div>
                                <div>
                                    <c:forEach var="row" items="${requestScope.reserve.getReserveadds()}">
                                    <ul>
                                        <li style="font-size: 1.5em">${row.text}</li>
                                    </ul>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <h3></h3>
                            </div>

                        </div>
                    </div>
                    
                    
                    
                </div>
            </div>
        </div>
    </body>
</html>
