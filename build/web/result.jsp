<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html lang="en">
<head>
    <title>Countries code</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <link href="decoration/cloud-background.css" rel="stylesheet" type="text/css">
    <link href="decoration/style.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="decoration/validateTextField.js"></script>
    <style>
        input[type="text"]{
            width: 66vw;
        }

        #btnSubmit{
            width: 8vw;
        }


        #clouds{
            position: absolute;
            left: 0;
            bottom: 0px;
            width: 100%;
            overflow-x: hidden;
            opacity: 0.7;
        }
        
        a{
            border-radius: 30px;
            border: 2px white solid;
            color: white;
            background: rgba(255,255,255,0);
            padding: 5px 15px 5px 15px;
            text-decoration: none;
            font-size: 20px;
            margin:10px;
            margin-left: 25px;
        }
        
        a:hover{
            color: white;
            background: rgba(0,0,0,0.6);    
        }
        
    </style>
</head>
<body>


<div>
    <div class="container" style="padding-top: 30px">
        <form action="MyServlet" method="POST" id="form">
            <h1>Enter the country's name :</h1>
            <input type="text" name="countryName" id="countryName">
            <input type="submit" id="btnSubmit" value="SEARCH">

        </form>
    </div>

    <div class="content">
        
        
      
        <div class="top-content">
            
            <c:choose>               
                <c:when  test = "${not empty message}">
                    <br>
                    <h1>${message}</h1>
                </c:when>
                <c:when test ="${empty message}">      
                    <div style="margin:25px;">
                        <a href="index.jsp" style="float: left"> &lt; Homepage</a>
                        <a href="add.jsp" style="float: left">CRUD Fuction&gt; </a>
                    </div>  
                    <div style="clear:both">
                    <img src="image/${cou.getFlag()}" alt="${cou.getFlag()}" style="float: left">
                    <table style="float:left">
                        <tr>
                            <td>Country : </td> <td> ${cou.getName()}</td>
                        </tr>
                        <tr>
                            <td>Nice Name : </td> <td> ${cou.getNicename()}</td>
                        </tr>

                        <tr>
                            <td>ISO Code :&nbsp; </td><td> ${cou.getIso()}</td>
                        </tr>
                        <tr>
                            <td>ISO3 Code : </td> <td> ${cou.getIso3()}</td>
                        </tr>
                        <tr>
                            <td>Numcode : </td> <td> ${cou.getNumcode()}</td>
                        </tr>
                        <tr>
                            <td>PhoneCode : &nbsp;&nbsp;&nbsp;</td> <td> +${cou.getPhonecode()}</td>
                        </tr>


                    </table>
                    </div>
                    <div style="clear: both;"></div>
                
                </c:when>
            </c:choose>
            
    </div>

    <div id="footer">
        <span>Lectured by: Pro. Dorin Sima</span><br>
        <span>Created &nbsp;by: Mr. Samrith Yoeun</span>
    </div>
</div>
    <div id="clouds">
        <div id="cloud3"></div>  
        <div id="cloud1"></div>
        <div id="cloud2"></div>


    </div>
</body>
</html>