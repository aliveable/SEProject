<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>File Uploading Form</title>
        
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="text/javascript" src="JS/editServicePicture.js"></script>
    </head>

    <body>
        <h3>XXX </h3>
        ${requestScope.test} <br>
        Select a file to upload: <br>
        <form action="UploadPicture" method="post" enctype="multipart/form-data">
            <input id="input-upload" type="file" name="file" accept="image/*" multiple />
            <br>
            <input type="submit" />
        </form>
    </body>
</html>
