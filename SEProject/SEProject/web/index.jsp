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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

                    <div class="col-lg-3">

                    </div>

                </div>
                <div class="row">
                    <div class="container">
                        <div class="row col-lg-12">

                            <div class="container">
                                <div class="row">
                                    <div class="table-responsive">
                                        <table class="table table-hover" id="space-table">
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
            $.fn.pageMe = function (opts) {
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

                if (typeof settings.childSelector != "undefined") {
                    children = listElement.find(settings.childSelector);
                }

                if (typeof settings.pagerSelector != "undefined") {
                    pager = $(settings.pagerSelector);
                }

                var numItems = children.size();
                var numPages = Math.ceil(numItems / perPage);

                pager.data("curr", 0);

                if (settings.showPrevNext) {
                    $('<li><a href="#" class="prev_link">«</a></li>').appendTo(pager);
                }

                var curr = 0;
                while (numPages > curr && (settings.hidePageNumbers == false)) {
                    $('<li><a href="#" class="page_link">' + (curr + 1) + '</a></li>').appendTo(pager);
                    curr++;
                }

                if (settings.showPrevNext) {
                    $('<li><a href="#" class="next_link">»</a></li>').appendTo(pager);
                }

                pager.find('.page_link:first').addClass('active');
                pager.find('.prev_link').hide();
                if (numPages <= 1) {
                    pager.find('.next_link').hide();
                }
                pager.children().eq(1).addClass("active");

                children.hide();
                children.slice(0, perPage).show();

                pager.find('li .page_link').click(function () {
                    var clickedPage = $(this).html().valueOf() - 1;
                    goTo(clickedPage, perPage);
                    return false;
                });
                pager.find('li .prev_link').click(function () {
                    previous();
                    return false;
                });
                pager.find('li .next_link').click(function () {
                    next();
                    return false;
                });

                function previous() {
                    var goToPage = parseInt(pager.data("curr")) - 1;
                    goTo(goToPage);
                }

                function next() {
                    goToPage = parseInt(pager.data("curr")) + 1;
                    goTo(goToPage);
                }

                function goTo(page) {
                    var startAt = page * perPage,
                            endOn = startAt + perPage;

                    children.css('display', 'none').slice(startAt, endOn).show();

                    if (page >= 1) {
                        pager.find('.prev_link').show();
                    } else {
                        pager.find('.prev_link').hide();
                    }

                    if (page < (numPages - 1)) {
                        pager.find('.next_link').show();
                    } else {
                        pager.find('.next_link').hide();
                    }

                    pager.data("curr", page);
                    pager.children().removeClass("active");
                    pager.children().eq(page + 1).addClass("active");

                }
            };
        </script>
        <script type="text/javascript" src="JS/index.js"></script>

    </body>
</html>
