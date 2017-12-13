<%-- 
    Document   : navbar
    Created on : Dec 8, 2017, 4:39:31 PM
    Author     : Amoeba
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="CSS/newcssNavbar.css">

    <nav class="navbar navbar-expand-lg" id="header">

                <a class="navbar-brand" href="#" >Navbar</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav  mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="./Services">Home <span class="sr-only">(current)</span></a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav mr-right">
                        <c:choose>
                            <c:when test="${sessionScope.username != null}">
                        <li class="dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown">                 
                                <span class="user-name" style="color: white">
                                    ${sessionScope.first_name} ${sessionScope.last_name}
                                </span>

                                <b class="caret"></b></a>
                            <ul class="dropdown-menu dropdown-menu-right">

                                <div class="navbar-content">


                                    <div class="row">


                                        <div class="col-md-7">
                                            <span style="color: white">${sessionScope.first_name} ${sessionScope.last_name}</span>
                                            <p style="color: white;font-size: 0.9em" class="text-muted small">
                                                ${sessionScope.email}</p>
                                            <div class="divider">
                                            </div>

                                            <div>
                                                <a style="color: white" href="./Profile" class="btn btn-default btn-xs"><i class="fa fa-user-o" aria-hidden="true"></i> Profile</a>
                                            </div>
                                            
                                            <div>
                                                <a style="color: white" href="./MyService" class="btn btn-default btn-xs"><i class="fa fa-address-card-o" aria-hidden="true"></i> Service</a>
                                            </div>
                                            <div>
                                                <a style="color: white" href="./getOurServiceTable" class="btn btn-default btn-xs"><i class="fa fa-cogs" aria-hidden="true"></i> Use our service</a>
                                            </div>
                                            <div>
                                                <a style="color: white"href="./Logout" class="btn btn-default btn-xs"><i class="fa fa-question-circle-o" aria-hidden="true"></i> Sign-out</a>
                                            </div>
                                        </div>
                                                    
                                    </div>

                                </div>

                            </ul>
                        </li>
                            </c:when>
                            <c:otherwise>
                                <a href="./Login">Login</a>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
            </nav>