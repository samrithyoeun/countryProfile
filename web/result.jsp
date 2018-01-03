<!DOCTYPE html>
<html lang="en">
<head>
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
    </style>
</head>
<body>


<div>
    <div class="container" style="padding-top: 30px">
        <form action="MyServlet" method="POST">
            <h1>Enter the country's name :</h1>
            <input type="text" name="countryName">
            <input type="submit" id="btnSubmit" value="SEARCH">

        </form>
    </div>

    <div class="content">
        <div class="top-content">
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
                    <td>PhoneCode : &nbsp;&nbsp;&nbsp;</td> <td> ${cou.getPhonecode()}</td>
                </tr>
               

            </table>
        </div>
        <div style="clear: both;"></div>
       
    </div>

    <div id="footer">
        <span>Lectured by: Pro. Daru Sima</span><br>
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