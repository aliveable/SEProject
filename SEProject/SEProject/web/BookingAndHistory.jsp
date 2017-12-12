<%-- 
    Document   : BookingAndHistory
    Created on : Dec 13, 2017, 2:52:08 AM
    Author     : 58070012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Booking & History</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

        <link rel="stylesheet" href="cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css">

        <link rel="stylesheet" href="/CSS/Css1.css">
        <link rel="stylesheet" href="CSS/index.css">
        <link rel="stylesheet" href="CSS/herocss.css">
        <link rel="stylesheet" href="CSS/Cardcss.css">

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
            <%@include file="navbar.jsp" %>
        </header>
        <br>
        <br>

        <div class="container text-center">
            <h1>Booking & History</h1>
        </div>
        <hr>

        <div class="container col-lg-12">
            <div class="row">
                <div class="col-lg-6 text-center">
                    <h3>Booking</h3>
                    <div class="table-responsive">
                        <form action="MyServiceInformation" method="POST" class="form-horizontal" role="form" id="ViewInformation">
                            <table class="table table-hover" id="booking-table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Space Name</th>
                                        <th>Space Address</th>
                                        <th>Name</th>
                                        <th>ดูรายละเอียด</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <c:forEach var="row" items="${requestScope.my_service.getServices()}">

                                        <tr>
                                            <td>${row.space_id}</td>
                                            <td>${row.space_name}</td>
                                            <td>${row.space_address}</td>
                                            <td>${row.name}</td>                                                      
                                            <td><button class="btn btn-success" name="id" value="${row.space_id}" type="submit" style="float: right">ดูรายละเอียด</button></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>   
                        </form>

                    </div>
                </div>
                <div class="col-lg-6 text-center">
                    <h3>History</h3>
                    <div class="table-responsive">
                        <form action="MyServiceInformation" method="POST" class="form-horizontal" role="form" id="ViewInformation">
                            <table class="table table-hover" id="history-table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Space Name</th>
                                        <th>Space Address</th>
                                        <th>Name</th>
                                        <th>ดูรายละเอียด</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <c:forEach var="row" items="${requestScope.my_service.getServices()}">

                                        <tr>
                                            <td>${row.space_id}</td>
                                            <td>${row.space_name}</td>
                                            <td>${row.space_address}</td>
                                            <td>${row.name}</td>                                                      
                                            <td><button class="btn btn-success" name="id" value="${row.space_id}" type="submit" style="float: right">ดูรายละเอียด</button></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>   
                        </form>

                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript" src="JS/bookingandhistory.js"></script>
    </body>
</html>
