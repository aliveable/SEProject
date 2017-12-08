<%-- 
    Document   : CreateService
    Created on : Dec 8, 2017, 6:28:35 PM
    Author     : 58070012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

        <link rel="stylesheet" href="cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css">

        <link href="https://cdn.quilljs.com/1.0.0/quill.snow.css" rel="stylesheet">

        <link rel="stylesheet" href="/CSS/Css1.css">
        <link rel="stylesheet" href="CSS/createService.css">
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

                                            <div>
                                                <a href="./56ExR" class="btn btn-default btn-xs"><i class="fa fa-user-o" aria-hidden="true"></i> Profile</a>
                                            </div>

                                            <div>
                                                <a href="#" class="btn btn-default btn-xs"><i class="fa fa-address-card-o" aria-hidden="true"></i> Service</a>
                                            </div>
                                            <div>
                                                <a href="#" class="btn btn-default btn-xs"><i class="fa fa-cogs" aria-hidden="true"></i> Use our service</a>
                                            </div>
                                            <div>
                                                <a href="#" class="btn btn-default btn-xs"><i class="fa fa-question-circle-o" aria-hidden="true"></i> Message</a>
                                            </div>
                                            <div>
                                                <a href="#" class="btn btn-default btn-xs"><i class="fa fa-question-circle-o" aria-hidden="true"></i> Sign-out</a>
                                            </div>
                                        </div>

                                    </div>

                                </div>

                            </ul>

                        </li>
                    </ul>
                </div>

            </nav>

        </header>

        <br>
        <br>
        <div class="container">

            <div class="form-group">
                <h1>Create Service</h1>
            </div>
            <hr>

            <div class="col-lg-12">
                <form class="form-horizontal" role="form">

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Name:</label>
                        <div class="col-lg-8">
                            <input class="form-control" type="text" value="Kunach">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Address:</label>
                        <div class="col-lg-8">

                            <div class="row">
                                <div class="col-lg-4">
                                    <input class="form-control" type="text" value="232 ladkrabang">
                                </div>
                                <br>
                                <div class="col-lg-4">
                                    <input class="form-control" type="text" value="Ladkrabang">
                                </div>
                                <br>
                            </div>
                            <br>

                            <div class="row">
                                <div class="col-lg-4">
                                    <input class="form-control" type="text" value="Ladkrabang">
                                </div>
                                <br>
                                <div class="col-lg-5">
                                    <select class="form-control" name="province">
                                        <option value="" selected>--------- เลือกจังหวัด ---------</option>
                                        <option value="กรุงเทพมหานคร">กรุงเทพมหานคร</option>
                                        <option value="กระบี่">กระบี่ </option>
                                        <option value="กาญจนบุรี">กาญจนบุรี </option>
                                        <option value="กาฬสินธุ์">กาฬสินธุ์ </option>
                                        <option value="กำแพงเพชร">กำแพงเพชร </option>
                                        <option value="ขอนแก่น">ขอนแก่น</option>
                                        <option value="จันทบุรี">จันทบุรี</option>
                                        <option value="ฉะเชิงเทรา">ฉะเชิงเทรา </option>
                                        <option value="ชัยนาท">ชัยนาท </option>
                                        <option value="ชัยภูมิ">ชัยภูมิ </option>
                                        <option value="ชุมพร">ชุมพร </option>
                                        <option value="ชลบุรี">ชลบุรี </option>
                                        <option value="เชียงใหม่">เชียงใหม่ </option>
                                        <option value="เชียงราย">เชียงราย </option>
                                        <option value="ตรัง">ตรัง </option>
                                        <option value="ตราด">ตราด </option>
                                        <option value="ตาก">ตาก </option>
                                        <option value="นครนายก">นครนายก </option>
                                        <option value="นครปฐม">นครปฐม </option>
                                        <option value="นครพนม">นครพนม </option>
                                        <option value="นครราชสีมา">นครราชสีมา </option>
                                        <option value="นครศรีธรรมราช">นครศรีธรรมราช </option>
                                        <option value="นครสวรรค์">นครสวรรค์ </option>
                                        <option value="นราธิวาส">นราธิวาส </option>
                                        <option value="น่าน">น่าน </option>
                                        <option value="นนทบุรี">นนทบุรี </option>
                                        <option value="บึงกาฬ">บึงกาฬ</option>
                                        <option value="บุรีรัมย์">บุรีรัมย์</option>
                                        <option value="ประจวบคีรีขันธ์">ประจวบคีรีขันธ์ </option>
                                        <option value="ปทุมธานี">ปทุมธานี </option>
                                        <option value="ปราจีนบุรี">ปราจีนบุรี </option>
                                        <option value="ปัตตานี">ปัตตานี </option>
                                        <option value="พะเยา">พะเยา </option>
                                        <option value="พระนครศรีอยุธยา">พระนครศรีอยุธยา </option>
                                        <option value="พังงา">พังงา </option>
                                        <option value="พิจิตร">พิจิตร </option>
                                        <option value="พิษณุโลก">พิษณุโลก </option>
                                        <option value="เพชรบุรี">เพชรบุรี </option>
                                        <option value="เพชรบูรณ์">เพชรบูรณ์ </option>
                                        <option value="แพร่">แพร่ </option>
                                        <option value="พัทลุง">พัทลุง </option>
                                        <option value="ภูเก็ต">ภูเก็ต </option>
                                        <option value="มหาสารคาม">มหาสารคาม </option>
                                        <option value="มุกดาหาร">มุกดาหาร </option>
                                        <option value="แม่ฮ่องสอน">แม่ฮ่องสอน </option>
                                        <option value="ยโสธร">ยโสธร </option>
                                        <option value="ยะลา">ยะลา </option>
                                        <option value="ร้อยเอ็ด">ร้อยเอ็ด </option>
                                        <option value="ระนอง">ระนอง </option>
                                        <option value="ระยอง">ระยอง </option>
                                        <option value="ราชบุรี">ราชบุรี</option>
                                        <option value="ลพบุรี">ลพบุรี </option>
                                        <option value="ลำปาง">ลำปาง </option>
                                        <option value="ลำพูน">ลำพูน </option>
                                        <option value="เลย">เลย </option>
                                        <option value="ศรีสะเกษ">ศรีสะเกษ</option>
                                        <option value="สกลนคร">สกลนคร</option>
                                        <option value="สงขลา">สงขลา </option>
                                        <option value="สมุทรสาคร">สมุทรสาคร </option>
                                        <option value="สมุทรปราการ">สมุทรปราการ </option>
                                        <option value="สมุทรสงคราม">สมุทรสงคราม </option>
                                        <option value="สระแก้ว">สระแก้ว </option>
                                        <option value="สระบุรี">สระบุรี </option>
                                        <option value="สิงห์บุรี">สิงห์บุรี </option>
                                        <option value="สุโขทัย">สุโขทัย </option>
                                        <option value="สุพรรณบุรี">สุพรรณบุรี </option>
                                        <option value="สุราษฎร์ธานี">สุราษฎร์ธานี </option>
                                        <option value="สุรินทร์">สุรินทร์ </option>
                                        <option value="สตูล">สตูล </option>
                                        <option value="หนองคาย">หนองคาย </option>
                                        <option value="หนองบัวลำภู">หนองบัวลำภู </option>
                                        <option value="อำนาจเจริญ">อำนาจเจริญ </option>
                                        <option value="อุดรธานี">อุดรธานี </option>
                                        <option value="อุตรดิตถ์">อุตรดิตถ์ </option>
                                        <option value="อุทัยธานี">อุทัยธานี </option>
                                        <option value="อุบลราชธานี">อุบลราชธานี</option>
                                        <option value="อ่างทอง">อ่างทอง </option>
                                        <option value="อื่นๆ">อื่นๆ</option>
                                    </select>
                                </div>
                                <br>
                            </div>
                            <br>

                            <div class="row">
                                <div class="col-lg-4">
                                    <input class="form-control" type="text" value="10520">
                                </div>
                            </div>
                            <br>
                        </div>
                    </div>
                </form>
            </div>  
        </div>
        <br>

        <div class="container">
            <div class="form-group">
                <h1>Description</h1>
            </div>
            <hr>
            <div class="col-lg-12">
                <!-- Create the toolbar container -->
                <div class="form-group">
                    <div id="toolbar">
                        <button class="ql-bold">Bold</button>
                        <button class="ql-italic">Italic</button>
                    </div>

                    <!-- Create the editor container -->

                    <div id="editor">
                        <p>Hello World!</p>
                    </div>
                    <br>

                    <!-- Include the Quill library -->
                </div>
            </div>
        </div>

        <script src="https://cdn.quilljs.com/1.0.0/quill.js"></script>
        <!-- Initialize Quill editor -->
        <script>
            var editor = new Quill('#editor', {
                modules: {toolbar: '#toolbar'},
                theme: 'snow'
            });
        </script>

    </body>
</html>
