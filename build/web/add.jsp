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
    <script src="decoration/validateTextField.js"></script>
    <style>
       

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
        
        input[type="text"]{
            width: 20vw;
        }
        
        table,.buttonGroup{
            margin: 0 auto;
        }
        #textbox{
            width: 66vw;
        }
        
    
    </style>
</head>
<body>


<div>
 

    <div class="content">
        
        <form action="MyServlet" method="POST">
             
       
            <br>
            <br>
            <table>
                <tr> <td>CID : </td> <td><input type="text" name ="id"/></td></tr>
                <tr>
                    <td>Country : </td> <td> <input type="text" name ="name"/></td>
                </tr>
                <tr>
                    <td>Nice Name : </td> <td> <input type="text" name ="nicename"/></td>
                </tr>
                
                <tr>
                    <td>ISO Code : </td><td> <input type="text" name ="iso"/></td>
                </tr>
                <tr>
                    <td>ISO3 Code : </td> <td> <input type="text" name ="iso3"/></td>
                </tr>
                <tr>
                    <td>Numcode : </td> <td> <input type="text" name ="numcode"/></td>
                </tr>
                <tr>
                    <td>PhoneCode : &nbsp;&nbsp;&nbsp;</td> <td><input type="text" name ="phonecode" value="+"/></td>
                </tr>
                <tr>
                    <td>Flag : </td> <td><input type="file" id="file" name ="Browse Image"/><br> </td>
                </tr>
                <tr style="textalignment: center">
                    <td colspan="2">
                    <input type="submit" value="ADD COUNTRY" class="btnSubmit"> 
                    <input type="submit" value="DELETE COUNTRY" class="btnSubmit"> 
                    <input type="submit" value="UPDATE COUNTRY" class="btnSubmit">  
                    </td>
                </tr>  
            </table>
          
            <br>
          
                
            </div>
       
       
       
    </div>

        </form>
        
       
    </div>

    <div id="footer">
        <span>Lectured by: Pro. Daru Sima</span><br>
        <span>Created &nbsp;by: Mr. Samrith Yoeun</span>
    </div>
</div>

</body>
</html>