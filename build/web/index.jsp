<%-- 
    Document   : index
    Created on : Jan 3, 2018, 2:37:02 AM
    Author     : samrith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Countries code</title>
    <meta charset="utf-8">
    <meta name="author" content="Kelly Meyers">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <link href="decoration/cloud-background.css" rel="stylesheet" type="text/css">
    <link href="decoration/style.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <style>
    #btnSubmit{
        position: absolute;
        right: 0;
    }
    </style>
</head>
<body>

    <div class="container">
        <form action="MyServlet">
            <h1>Enter the country's name :</h1>
            <input type="text" name="countryName"> <br>
            <input type="submit" id="btnSubmit" value="SEARCH">

        </form>
    </div>

    <div id="footer">
        <span>Lectured by: Pro. Daru Sima</span><br>
        <span>Created &nbsp;by: Mr. Samrith Yoeun</span><br>
        <span>${countryController.count()} Countries in Database</span>
        
    </div>
    <div id="clouds">
        <div id="cloud3"></div>
        <div id="cloud1"></div>
        <div id="cloud2"></div>


    </div>


</body>
</html>
