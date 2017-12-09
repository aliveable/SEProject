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
    <link rel="stylesheet" href="CSS/herocss.css">
    <link rel="stylesheet" href="CSS/Cardcss.css">
    <link rel="stylesheet" href="CSS/User_profile.css">

    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    
    <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"> </script>
   
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


                        <form class="form-horizontal" role="form">
                        
                              <div class="form-group">
                                  
                                  <label class="col-lg-3 control-label">First name:</label><span>${sessionScope.first_name}</span>
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
                                
                                <label class="col-lg-3 control-label">Address:</label><span>${sessionScope.address}</span> 
                                <span>District: </span><span>${sessionScope.district}</span> 
                                
                                <label class="col-lg-11 control-label">
                                    <label class="col-lg-3 control-label"></label>
                                    <span> Sub-District:</span> <span>${sessionScope.sub_district}</span>
                                </label>
                                <label class="col-lg-11 control-label">
                                    <label class="col-lg-3 control-label"></label>
                                    <span>Zip-Code:</span> <span>${sessionScope.postal_code}</span>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Phone:</label><span>${sessionScope.phone}</span>
                            </div>

                            <div id="butmargindown">
                                <a href="./Edit_Profile" type="button" class="btn btn-success">Edit Profile</a>
                            </div>

                        </form>
                            
                    </div>

                      </div>

                  </div>
        
            <div class="col-lg-6 col-md-offset-1" id="alignpersonalinfo">
            <div class="col-lg-10" id="infopadtop">
                <h1 >Usage</h1>
            </div>
            
            <div class="row">
                <div class="container">
        <div class="row col-lg-12">

            <div class="container" id="tablelength">
    <div class="row">
      <div class="table-responsive">
        <table class="table table-hover">
          <thead>
            <tr>
              <th>#</th>
              <th>Table heading</th>
              <th>Table heading</th>
              <th>Table heading</th>
              <th>Table heading</th>
              <th>Table heading</th>
              <th>Table heading</th>
            </tr>
          </thead>
          <tbody id="myTable">
            <tr>
              <td>1</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
            </tr>
            <tr>
              <td>2</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
            </tr>
            <tr>
              <td>3</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
            </tr>
            <tr>
              <td>4</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
            </tr>
            <tr class="success">
              <td>5</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
            </tr>
            <tr>
              <td>6</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
            </tr>
            <tr>
              <td>7</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
            </tr>
             <tr>
              <td>8</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
            </tr>
            <tr>
              <td>9</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
            </tr>
            <tr>
              <td>10</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
            </tr>
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
    
</body>
</html>
