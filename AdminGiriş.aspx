<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminGiriş.aspx.cs" Inherits="Proje1.AdminGiriş" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Admin Kontrol Paneli</title>

  <!-- BOOTSTRAP STYLES-->

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      <script src="https://kit.fontawesome.com/09204778f6.js" crossorigin="anonymous"></script>

  <link href="assets/css/bootstrap.css" rel="stylesheet" />
  <!-- FONTAWESOME STYLES-->
  <link href="assets/css/font-awesome.css" rel="stylesheet" />
  <!-- GOOGLE FONTS-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

  <style>
    body {
         background-image: url("resimler/arkaplann.jpg"); 
         background-attachment: fixed;
         -moz-background-size : 100% 100%;
         -moz-background-size: 100% 100%;
         -moz-background-size: 100% 100%;
          -webkit-background-size: 100% 100%;
          background-size: 100% 100%;
    }
      .auto-style1 {
          font-size: x-large;
          color: #FFFFFF;
      }
      .auto-style2 {
          font-size: xx-large;
      }
  </style>

</head>
<body >
    <form id="form1" runat="server">
    <div class="container" style="margin-left:600px; margin-top:150px;" >
      <div class="auto-style1" style=" padding-top:100px; ">
            
          <strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">&nbsp;HOŞGELDİNİZ</span></em></strong></div>
      <div class="row ">
      <div class="col-md-9 col-md-offset-9 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
      <div style="background-color:purple; opacity: 0.6; margin-top:100px; border-radius: 5px 5px 5px 5px;" class="panel-body">
      
      
       
          <center><h2 style="color:white;"><b>Yönetici Giriş</b></h2></center>
             

                        <div class="form-group input-group" style="left: 0px; top: 0px; width: 99%">
                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                           
                            <asp:TextBox ID="TextBox1" runat="server"  class="form-control" placeholder="Kullanıcı Adı Giriniz "></asp:TextBox>
                        </div>
                        
                        <div class="form-group input-group" style="left: 0px; top: 0px; width: 99%">
                            <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                            
                            <asp:TextBox ID="TextBox2" class="form-control" placeholder="Şifrenizi Giriniz" runat="server"></asp:TextBox>
                        </div>
                                                                          
                    <asp:Button ID="Button1" style="width:100%" class="btn btn-primary " runat="server" Text="Giriş Yap" OnClick="Button1_Click" />
                                                                          
                  
                  
                     <hr />
                 </form>
          
         </div>
     </div>
 </div>

    </form>

</body>
</html>
