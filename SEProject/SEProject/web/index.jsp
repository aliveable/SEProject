<%-- 
    Document   : Services
    Created on : Dec 4, 2017, 2:36:10 PM
    Author     : Amoeba
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

    <link rel="stylesheet" href="/CSS/Css1.css">
    <link rel="stylesheet" href="CSS/testcss.css">
    <link rel="stylesheet" href="CSS/herocss.css">
    <link rel="stylesheet" href="CSS/Cardcss.css">

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
        <nav class="navbar navbar-expand-lg" id="header">

  <a class="navbar-brand" href="#" >Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav  mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="#">Disabled</a>
      </li>
    </ul>
        <ul class="nav navbar-nav mr-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    
                                    <span class="user-name">
                                        John Doe
                                    </span>
                    
                                    <b class="caret"></b></a>
                                    <ul class="dropdown-menu dropdown-menu-right">

                                        <div class="navbar-content">


                                            <div class="row">
                                                

                                                <div class="col-md-7">
                                                        <span>John Doe</span>
                                                        <p class="text-muted small">
                                                            example@pods.tldddd</p>
                                                        <div class="divider">
                                                        </div>
                                                        <a href="./56ExR" class="btn btn-default btn-xs"><i class="fa fa-user-o" aria-hidden="true"></i> Profile</a>
                                                    
                                                        <a href="#" class="btn btn-default btn-xs"><i class="fa fa-address-card-o" aria-hidden="true"></i> Service</a>
                                                    
                                                        <a href="#" class="btn btn-default btn-xs"><i class="fa fa-cogs" aria-hidden="true"></i> Use our service</a>
                                                    
                                                        <a href="#" class="btn btn-default btn-xs"><i class="fa fa-question-circle-o" aria-hidden="true"></i> Message</a>
                                                </div>
                                                
                                            </div>

                                        </div>

                                            <div class="navbar-footer">


                                                <div class="navbar-footer-content">
                                                    <div class="row">

                                                            <a href="#" class="btn btn-default btn-sm pull-right"><i class="fa fa-power-off" aria-hidden="true"></i> Sign Out</a>
                                                    </div>
                                                </div>


                                            </div>

                                    </ul>
                                </li>
        </ul>
    </div>
</nav>

        <header class="intro-header" >

        <div class="container">
            <div class="intro-message">
              <h1>Co-Working Space</h1>
              <hr class="intro-divider">
              <ul class="list-inline intro-social-buttons">
                <li class="list-inline-item">
                  <a href="#" class="btn btn-secondary btn-lg">
                    <i class="fa fa-twitter fa-fw"></i>
                    <span class="network-name">Twitter</span>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#" class="btn btn-secondary btn-lg">
                    <i class="fa fa-github fa-fw"></i>
                    <span class="network-name">Facebook</span>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#" class="btn btn-secondary btn-lg">
                    <i class="fa fa-linkedin fa-fw"></i>
                    <span class="network-name">Google+</span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </header>
    </header>

<section class="content-section-a">

    <div class="container col-lg-10" id="paddingtop">
        
          <div class="row col-lg-10" id="float">
              <h1 >Our Service</h1>
          </div>
          
            <div class="input-group col-lg-12">
                
                 <div class="col-lg-2">
            
                </div>
                    
                    <input type="text" class="form-control" placeholder="Search for...">
                          <span class="input-group-btn">
                            <button class="btn btn-secondary" type="button">Go!</button>
                    </span>


                        <select class="form-control " id="selectpad">
                            <c:forEach var="i" begin="1" end="${sessionScope.num_page}">
                                <c:choose>
                                    <c:when test="${i == param.page}">
                                        <option value="i" selected>${i}</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="i">${i}</option>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </select>
                    
                <div class="col-lg-3">
            
                </div>
                
            </div>
<div class="row">
    <div class="container">
        <div class="row col-lg-12">

            <div class="container">
    <div class="row">
      <div class="table-responsive">
        <table class="table table-hover">
          <thead>
            <tr>
              <th>#</th>
              <th>Space Name</th>
              <th>Space Address</th>
              <th>Name</th>
              <th>ดูรายละเอียด</th>
            </tr>
          </thead>
          <tbody id="myTable">
          <c:forEach var="row" items="${sessionScope.services.getServices()}">
              <tr>
                  <td>${row.space_id}</td>
                  <td>${row.space_name}</td>
                  <td>${row.space_address}</td>
                  <td>${row.name}</td>
                  <td>ดูรายละเอียด</td>
              </tr>
          </c:forEach>    
          </tbody>
        </table>   
      </div>
      <div class="col-md-12 text-center">
      <ul class="pagination pagination-lg pager" id="myPager"></ul>
      </div>
	</div>
                
    <nav aria-label="Page navigation example" id="leftalignpagenav">
  <ul class="pagination">
      <c:if test="${param.page > 1}"> 
    <li class="page-item">
      <a class="page-link" href="./Services?page=${param.page-1}" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
    </c:if>
        <li class="page-item"><a class="page-link">${param.page}</a></li>

    <c:if test="${param.page < sessionScope.num_page}">
    <li class="page-item">
      <a class="page-link" href="./Services?page=${param.page+1}" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
  </c:if>
        </ul>
</nav>
                
</div>

          <div class="col-md-12 text-center">
            <ul class="pagination pagination-lg pager" id="myPager"></ul>
          </div>
            
        </div>
    </div>
</div>
      </div>

</section>
    <!-- /.content-section-b -->


    <!-- /.content-section-a -->

    <aside class="banner">

      <div class="container">

        <div class="row">
          <div class="col-lg-6 my-auto">
            <h2>Connect to Start Bootstrap:</h2>
          </div>
          <div class="col-lg-6 my-auto">
            <ul class="list-inline banner-social-buttons">
              <li class="list-inline-item">
                <a href="#" class="btn btn-secondary btn-lg">
                  <i class="fa fa-twitter fa-fw"></i>
                  <span class="network-name">Twitter</span>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#" class="btn btn-secondary btn-lg">
                  <i class="fa fa-github fa-fw"></i>
                  <span class="network-name">Github</span>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#" class="btn btn-secondary btn-lg">
                  <i class="fa fa-linkedin fa-fw"></i>
                  <span class="network-name">Linkedin</span>
                </a>
              </li>
            </ul>
          </div>
        </div>

      </div>
      <!-- /.container -->

    </aside>
    <script>
        $.fn.pageMe = function(opts){
    var $this = this,
        defaults = {
            perPage: 7,
            showPrevNext: false,
            hidePageNumbers: false
        },
        settings = $.extend(defaults, opts);
    
    var listElement = $this;
    var perPage = settings.perPage; 
    var children = listElement.children();
    var pager = $('.pager');
    
    if (typeof settings.childSelector!="undefined") {
        children = listElement.find(settings.childSelector);
    }
    
    if (typeof settings.pagerSelector!="undefined") {
        pager = $(settings.pagerSelector);
    }
    
    var numItems = children.size();
    var numPages = Math.ceil(numItems/perPage);

    pager.data("curr",0);
    
    if (settings.showPrevNext){
        $('<li><a href="#" class="prev_link">«</a></li>').appendTo(pager);
    }
    
    var curr = 0;
    while(numPages > curr && (settings.hidePageNumbers==false)){
        $('<li><a href="#" class="page_link">'+(curr+1)+'</a></li>').appendTo(pager);
        curr++;
    }
    
    if (settings.showPrevNext){
        $('<li><a href="#" class="next_link">»</a></li>').appendTo(pager);
    }
    
    pager.find('.page_link:first').addClass('active');
    pager.find('.prev_link').hide();
    if (numPages<=1) {
        pager.find('.next_link').hide();
    }
      pager.children().eq(1).addClass("active");
    
    children.hide();
    children.slice(0, perPage).show();
    
    pager.find('li .page_link').click(function(){
        var clickedPage = $(this).html().valueOf()-1;
        goTo(clickedPage,perPage);
        return false;
    });
    pager.find('li .prev_link').click(function(){
        previous();
        return false;
    });
    pager.find('li .next_link').click(function(){
        next();
        return false;
    });
    
    function previous(){
        var goToPage = parseInt(pager.data("curr")) - 1;
        goTo(goToPage);
    }
     
    function next(){
        goToPage = parseInt(pager.data("curr")) + 1;
        goTo(goToPage);
    }
    
    function goTo(page){
        var startAt = page * perPage,
            endOn = startAt + perPage;
        
        children.css('display','none').slice(startAt, endOn).show();
        
        if (page>=1) {
            pager.find('.prev_link').show();
        }
        else {
            pager.find('.prev_link').hide();
        }
        
        if (page<(numPages-1)) {
            pager.find('.next_link').show();
        }
        else {
            pager.find('.next_link').hide();
        }
        
        pager.data("curr",page);
      	pager.children().removeClass("active");
        pager.children().eq(page+1).addClass("active");
    
    }
};

$(document).ready(function(){
    
  $('#myTable').pageMe({pagerSelector:'#myPager',showPrevNext:true,hidePageNumbers:false,perPage:4});
    
});
    </script>
    
</body>
</html>
