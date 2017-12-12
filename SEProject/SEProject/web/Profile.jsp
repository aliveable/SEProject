<%-- 
    Document   : Profile
    Created on : Dec 8, 2017, 4:57:07 PM
    Author     : Amoeba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

    <link rel="stylesheet" href="/CSS/Css1.css">
    <link rel="stylesheet" href="CSS/testcss.css">

    <link rel="stylesheet" href="CSS/User_profile.css">

    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

    <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>

    <link rel="stylesheet" href="cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.css">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css">


    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>

<body>


    <header id="brand">
        <%@include file="navbar.jsp" %>
    </header>


    <!--Update Info 2 side-->
    <div class="col-lg-12" id="disp">
        <div class="row">
            <div class="col-lg-6 col-md-offset-1" id="alignpersonalinfo">

                <div class="col-lg-10" id="infopadtop">
                    <h1 >Personal info</h1>
                </div>

                <hr>

                <div class="row col-lg-12">
                    <!-- left column -->

                    <!-- edit form column -->
                    <div class="col-md-12 personal-info">


                        <form action="Edit_Profile" method="POST" class="form-horizontal" role="form">

                            <div class="form-group">

                                <label class="col-lg-3 control-label" name="first_name">First name:</label><span>${sessionScope.first_name}</span>
                                <div class="col-lg-8">

                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-3 control-label">Last name:</label><span>${sessionScope.last_name}</span>
                                <div class="col-lg-8">

                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-3 control-label">Email:</label><span>${sessionScope.email}</span>
                                <div class="col-lg-8">

                                </div>
                            </div>

                            <div class="form-group">

                                <label class="col-lg-3 control-label">Address:</label><span>${requestScope.address}</span> 
                                <span>District: </span><span>${requestScope.district}</span> 

                                <label class="col-lg-11 control-label">
                                    <label class="col-lg-3 control-label"></label>
                                    <span> Sub-District:</span> <span>${requestScope.sub_district}</span>
                                </label>
                                <label class="col-lg-11 control-label">
                                    <label class="col-lg-3 control-label"></label>
                                    <span>Province:</span> <span>${requestScope.province}</span>
                                </label>
                                <label class="col-lg-11 control-label">
                                    <label class="col-lg-3 control-label"></label>
                                    <span>Zip-Code:</span> <span>${requestScope.postal_code}</span>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Phone:</label><span>${requestScope.phone}</span>
                            </div>
                            <input hidden="" type="text" name="phone" value="${requestScope.phone}">
                            <input hidden="" type="text" name="address" value="${requestScope.address}">
                            <input hidden="" type="text" name="district" value="${requestScope.district}">
                            <input hidden="" type="text" name="sub_district" value="${requestScope.sub_district}">
                            <input hidden="" type="text" name="province" value="${requestScope.province}">
                            <input hidden="" type="text" name="postal_code" value="${requestScope.postal_code}">
                            <div id="butmargindown">
                                <button type="submit" name="test" class="btn btn-success">Edit Profile</button>
                            </div>
                        </form>

                    </div>

                </div>

            </div>

            <div class="col-lg-6 col-md-offset-1" id="alignpersonalinfo" style="padding-top: 0.4%">
                <div class="col-lg-10" id="infopadtop">
                    <h1>Usage History</h1>
                </div>

                <div class="row">
                    <div class="container">
                        <div class="row col-lg-12">
                            <div class="container" id="tablelength">
                                <div class="row">
                                    <div class="table-responsive">
                                        <table class="table table-hover" id="profile-table">
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
                                                <c:forEach var="row" items="${requestScope.services.getServices()}">
                                                    <tr>
                                                        <td>${row.space_id}</td>
                                                        <td>${row.space_name}</td>
                                                        <td>${row.space_address}</td>
                                                        <td>${row.name}</td>
                                                        <td><a type="button" href="SpaceInformation?id=${row.space_id}" class="btn btn-success">ดูประวัติ</a></td>
                                                    </tr>
                                                </c:forEach>    
                                            </tbody>
                                        </table>   
                                    </div>
                                    <hr>
                                </div>   

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <script type="text/javascript" src="JS/Profile.js"></script>
</body>
</html>
