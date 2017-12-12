<%-- 
    Document   : testgalerry
    Created on : Dec 12, 2017, 2:19:24 AM
    Author     : 58070012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit package</title>
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
            <div class="container text-center" style="padding-top: 1%;">
                <h1> Edit Package </h1>
            </div>
            <hr>
            <br>
            <div class="container" style=";padding-bottom: 1%">
                <form action="updatepackage" method="post" method="POST" class="form-horizontal" role="form" id="updatePackage">
                    <input type="hidden" name="id" value="${sessionScope.package.getPackage_id()}">
                    <div class="container" style="margin-top: 2%;background: #D3D3D320;padding-top: 1%;" >
                        <div class="row" style="margin-left: 1%"> 
                            <div>
                                <label style="font-size: 1.5em;">Package Name: </label>
                            </div>
                            <div style="padding-left: 1%">
                                <input class="form-control" type="text" name="name" value="${package.name}">
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="container" style="background: #D3D3D320">
                        <div class="form-group">
                            <h1 style="padding-top: 2%">Description</h1>
                        </div>
                        <hr>
                        <div class="col-lg-12">
                            <!-- Create the toolbar container -->
                            <div class="form-group">
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
                                <br>
                                <!-- Include the Quill library -->
                            </div>
                        </div>
                    </div>
                    <div class="container" style="margin-left: 1%;padding-bottom: 1%">
                        <div class="row"> 
                            <div>
                                <label style="font-size: 1.5em">ราคา: </label>
                            </div>
                            <div style="padding-left: 1%">
                                <input class="form-control" type="text" name="price" value="${package.price}">

                            </div>
                            <div style="padding-left: 1%">
                                <label style="font-size: 1.5em" >บาทต่อคนในหนึ่งชม </label>
                            </div>
                        </div>

                        <div class="row">
                            <div>
                                <label style="font-size: 1.5em">ต้องจองก่อน</label>
                            </div>
                            <div style="padding-left: 1%">
                                <input class="form-control" type="number" name="before" min="0" value="${package.reserve_before}">

                            </div>
                            <div style="padding-left: 1%">
                                <label style="font-size: 1.5em" >ชมก่อนถึงเวลา</label>
                            </div>
                            &nbsp;&nbsp;&nbsp;
                            <div>
                                <label style="font-size: 1.5em">รองรับได้สูงสุด</label>
                            </div>
                            <div style="padding-left: 1%">
                                <input class="form-control" type="number" name="max" min="1" value="${package.size}">

                            </div>
                            <div style="padding-left: 1%">
                                <label style="font-size: 1.5em">คน</label>
                            </div>
                        </div>
                        <div class="row">
                            <div>
                                <label style="font-size: 1.5em">เวลาเปิดทำการ</label>
                            </div>
                            <div style="padding-left: 1%">
                                <input class="form-control" type="time" name="open_time" value="${package.open}">

                            </div>
                            <div style="padding-left: 1%">
                                <label style="font-size: 1.5em"></label>
                            </div>
                            &nbsp;&nbsp;&nbsp;
                            <div>
                                <label style="font-size: 1.5em">เวลาปิดทำการ</label>
                            </div>
                            <div style="padding-left: 1%">
                                <input class="form-control" type="time" name="close_time" value="${package.close}">

                            </div>
                            <div style="padding-left: 1%">
                                <label style="font-size: 1.5em"></label>
                            </div>
                        </div>
                        <div class="container">            
                            <button id="addpackagecreate" type="submit" class="btn btn-success" style="margin-left: 2%;float: right">Update</button>
                        </div> 
                    </div>
                </form>
                <br>
                <br>
                <hr>
                <div class="container" style="background: #D3D3D320">
                    <label style="font-size: 1.8em;padding-top: 1%">Gallery</label>
                    <hr>
                    <div class="container-gallery" style="overflow-y: scroll; max-height: 850px">

                        <c:forEach var="pic" items="${sessionScope.package.getPics()}">
                            <c:if test = "${pic != null}">
                                <img src="${pic}">
                            </c:if>
                        </c:forEach>
                    </div>

                    <div class="container" style="float: left">
                        <div class="form-group"  >
                            <form action="EditPackagePicture" method="post">
                                <button type="submit" class="btn btn-success" style="margin-top: 1%">Edit</button>
                            </form>
                        </div>
                    </div>
                    <br>
                    <br>
                    <br>
                </div>
                <br>
                <br>
                <div id="addItemContainer" class="container addinc" style="background: #D3D3D320">
                    <h1 style="padding-top: 1%;">Include</h1>
                    <hr>
                    <div class="container">
                        <c:forEach var="row" items="${sessionScope.includes.getIncludes()}">
                            <form action="editInc?packagelistid=${row.package_list_id}&packageid=${row.package_id}" method="post">

                                <div class="row text-center" style="margin-top: 1%;text-align: center">
                                    <div class="container col-lg-12">
                                        <div class="row">
                                            <div class="col-lg-2">
                                                <h2>Message</h2>
                                            </div>
                                            <div class="col-lg-6" style="">
                                                <input pattern="{1,100}"style="font-size: 1.3em;overflow-x: scroll" class="form-control" type="text" name="package_text" placeholder="" id="package_text" value="${row.package_text}">
                                            </div>
                                            <div class="col-lg-2">
                                                <button type="submit" class="btn btn-success" style=";font-size: 1.8em">Update</button>
                                            </div>

                                            <div class="col-lg-2">
                                                <a role="button" class="btn btn-success text-center" style="margin-left: 2%;font-size: 1.8em;height: 100%" href="removeInc?packagelistid=${row.package_list_id}&packageid=${row.package_id}">Remove</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="container" style="padding-top: 1%">
                                        <input pattern="{1,100}" style="font-size: 1em;overflow-x: scroll" class="form-control" type="hidden" name="package_list_price" placeholder="" id="package_list_price" value="">
                                    </div>

                                    


                                </div> 

                            </form>
                        </c:forEach>
                    </div>

                    <br>
                    <form action="newInc?packageid=${package.package_id}" method="post">
                        <div class="container col-lg-12">
                            <div class="row" style="margin-top: 1%">
                                <div class="container ">
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <h2>Message</h2>
                                        </div>
                                        <div class="col-lg-7" style="">
                                            <input pattern="{1,100}" style="font-size: 1em;overflow-x: scroll" class="form-control" type="text" name="package_text" placeholder="" id="package_text" value="">
                                        </div>
                                        <div class="col-g-2">
                                            <button id="additem" type="submit" class="btn btn-success" style="margin-left: 2%;font-size: 1.5em">add Item</button>
                                        </div>
                                    </div>
                                </div>
                                
                                
                            </div>
                            <br>
                            
                            <br>
                        </div>
                    </form>
                    <br>
                </div>

                <br>
                <br>
                <div id="addItemContainerOptional" class="container" style="background: #D3D3D320">
                    <h1 style="padding-top: 1%;">Optional</h1>
                    <hr>
                    <div class="container">
                        <c:forEach var="row" items="${sessionScope.options.getIncludes()}">
                            <form action="editInc?packagelistid=${row.package_list_id}&packageid=${row.package_id}" method="post">

                                <div class="row text-center" style="margin-top: 1%;text-align: center">
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <h2>Message</h2>
                                        </div>
                                        <div class="col-lg-4" style="">
                                            <input pattern="{1,100}" style="font-size: 1em;overflow-x: scroll" class="form-control" type="text" name="package_text" placeholder="" id="package_text" value="${row.package_text}">
                                        </div>



                                        <div class="col-lg-2" style="">
                                            <h2>Amount</h2>
                                        </div>
                                        <div class="col-lg-2" style="margin-left: -2%;padding-left: -2%">
                                            <input pattern="{1,100}" style="font-size: 1em;overflow-x: scroll" class="form-control" type="text" name="package_list_price" placeholder="" id="package_list_price" value="${row.package_list_price}">
                                        </div>
                                        <div class="col-lg-1">
                                            <button type="submit" class="btn btn-success" style="font-size:1em;height: 100%">Update</button>
                                        </div>

                                        <div class="col-lg-1" style="">
                                            <a role="button" class="btn btn-success text-center" style="height: 100%;margin-left: 2%;padding-top: 22.5%;font-size: 1em" href="removeInc?packagelistid=${row.package_list_id}&packageid=${row.package_id}">Remove</a>
                                        </div>

                                    </div>

                                      
                                    </div> 

                            </form>
                        </c:forEach>
                    </div>
                    <br>
                    <form action="newInc?packageid=${package.package_id}" method="post">
                        <div class="col-lg-12" style="margin-top: 1%">
                            <div class="row" style="margin-left: -2.5%">
                                <div class="col-lg-2">
                                    <h2>Message</h2>
                                </div>
                                <div class="col-lg-4" style="">
                                    <input pattern="{1,100}"style="font-size: 1em;overflow-x: scroll" class="form-control" type="text" name="package_text" placeholder="" id="package_text" value="">
                                </div>
                            
                                <div class="col-lg-2">
                                    <h2>Amount</h2>
                                </div>
                                <div class="col-lg-2" style="margin-left: -3.3%;">
                                    <input pattern="{1,100}" style="font-size: 1em;overflow-x: scroll" class="form-control" type="text" name="package_list_price" placeholder="" id="package_list_price" value="">
                                </div>
                                <div class="col-g-2" style="padding-left: 1%">
                                    <button id="additem" type="submit" class="btn btn-success" style="margin-left: 2%;width: 100%;height: 100%">add Item</button>
                                </div>
                                 
                            </div>
                            
                        </div>
                        <br>
                        <div class="row" style="margin-left: -2%">
                            
                        </div>
                        <br>
                    </form>
                </div>
                <br>
                <br>
                <div class="row">
                    <a role="button" class="btn btn-success" style="margin-left: 2%" href="./MyServiceInformation?id=${sessionScope.desc.getId()}">back</a>
                </div>

            </div>
        </div>
        <br>
        <script src="//code.jquery.com/jquery.min.js"></script>
        <script src='JS/gallery.js'></script>
        <script>
            $('#pak1').css("border", "3px solid bule");
        </script>
        <script>

            $('.container-gallery').gallery({
                height: 700,
                width: 500,
                items: 5,
                480: {
                    items: 2,
                    height: 400,
                    thmbHeight: 100},
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

        <script src="https://cdn.quilljs.com/1.0.0/quill.js"></script>
        <!-- Initialize Quill editor -->
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
                placeholder: 'Example',
                theme: 'snow'
            });
            quill.setContents(${package.desc});
            $(document).ready(function () {
                $("#updatePackage").submit(function () {
                    $(this).append("<input type='hidden' name='contents' value='" +
                            JSON.stringify(quill.getContents()) + "' >");
                });
            });
        </script>
    </body>
</html>
