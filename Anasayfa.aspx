<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="Proje1.Anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>
        <script src="sliderengine/jquery.js"></script>
    <script src="sliderengine/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="sliderengine/amazingslider-1.css">
        <!-- CSS only -->
    <script src="sliderengine/initslider-1.js"></script>

         <style type="text/css">
        .esnek-kutum {
  padding: 0;
  margin: 0;
  list-style: none;
  display: flex;
  flex-flow: row wrap;
  justify-content: flex-start;
}

.zekicannet-kutum-bir {
  flex: 1;
  background: black;
  max-width:10%;
  padding: 5px;
  height: 150px;
  margin:1%;
  flex-shrink:1;
  flex-basis:23%;
  box-sizing:border-box;
  float:left;
}
.zekicannet-kutum-iki {
  flex: 1;
  background: pink;
  max-width:10%;
  padding: 5px;
  height: 150px;
  margin:1%;
  flex-shrink:1;
  flex-basis:23%;
  box-sizing:border-box;
  float:left;
}
.zekicannet-kutum-uc {
  flex: 1;
  background:red;
  max-width:10%;
  padding: 5px;
  height: 150px;
  margin:1%;
  flex-shrink:1;
  flex-basis:23%;
  box-sizing:border-box;
  float:left;
}
.zekicannet-kutum-dort {
  flex: 1;
  background: blue;
  max-width:10%;
  padding: 5px;
  height: 150px;
  margin:1%;
  flex-shrink:1;
  flex-basis:23%;
  box-sizing:border-box;
}
       



        .auto-style16 {
            height: 269px;
        }
        .auto-style17 {
            height: 269px;
            width: 204px;
        }
        .auto-style19 {
        text-decoration: underline;
        text-align: center;
        font-size: large;
    }
                

    /* Main column */
.main {   
  -ms-flex: 70%; /* IE10 */
  flex: 70%;
  background-color: white;
  padding: 20px;

}

/* Fake image, just for this example */
.fakeimg {
  background-color: #aaa;
  width: 95%;
  padding: 20px;
}

/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: #ddd;
  height:40px;
}
.footer h2 {
   font-size:20px;
   text-align: center;
}

             .auto-style26 {
                 width: 100%;
             }

    </style>
    </head>
   
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

 

  <!-- Slider -->

         <div class="amazingslider-wrapper" id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:900px;margin:0px auto 48px;">
        <div class="amazingslider" id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
            <ul class="amazingslider-slides" style="display:none;">
               
                 <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <li><asp:Image ID="Image3" runat="server" ImageUrl='<%#Eval("Resim") %>' Height="191px" Width="350px" /></li>

                    </ItemTemplate>
                </asp:DataList>
               
            </ul>
            <ul class="amazingslider-thumbnails" style="display:none;">
              
            </ul>
        <div class="amazingslider-engine"><a href="http://amazingslider.com" title="Responsive JavaScript Image Slider">Responsive JavaScript Image Slider</a></div>
        </div>
    </div>



     
   
 


   
    
 


 

   
  
    </div>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
   
      



        <div class="amazingslider-wrapper" id="amazingslider-wrapper-2" style="display:block;position:relative;max-width:900px;padding-left:0px; padding-right:250px;margin:0px auto 0px;">
        <div class="amazingslider" id="amazingslider-2" style="display:block;position:relative;margin:0 auto;">
            <ul class="amazingslider-slides" style="display:none;">
                <li><img src="images/WIN_20211005_18_30_59_Pro.jpg" alt="WIN_20211005_18_30_59_Pro"  title="WIN_20211005_18_30_59_Pro" />
                </li>
                <li><img src="images/WIN_20211005_18_31_03_Pro.jpg" alt="WIN_20211005_18_31_03_Pro"  title="WIN_20211005_18_31_03_Pro" />
                </li>
                <li><img src="images/WIN_20211005_18_31_05_Pro.jpg" alt="WIN_20211005_18_31_05_Pro"  title="WIN_20211005_18_31_05_Pro" />
                </li>
                <li><img src="images/WIN_20211005_18_31_08_Pro.jpg" alt="WIN_20211005_18_31_08_Pro"  title="WIN_20211005_18_31_08_Pro" />
                </li>
                <li><img src="images/WIN_20210731_22_04_41_Pro.jpg" alt="WIN_20210731_22_04_41_Pro"  title="WIN_20210731_22_04_41_Pro" />
                </li>
                <li><img src="images/WIN_20210731_22_04_41_Pro.jpg" alt="WIN_20210731_22_04_41_Pro"  title="WIN_20210731_22_04_41_Pro" />
                </li>
                <li><img src="images/WIN_20210731_22_04_53_Pro.jpg" alt="WIN_20210731_22_04_53_Pro"  title="WIN_20210731_22_04_53_Pro" />
                </li>
                <li><img src="images/WIN_20211005_18_31_11_Pro.jpg" alt="WIN_20211005_18_31_11_Pro"  title="WIN_20211005_18_31_11_Pro" />
                </li>
                <li><img src="images/WIN_20211005_18_31_01_Pro.jpg" alt="WIN_20211005_18_31_01_Pro"  title="WIN_20211005_18_31_01_Pro" />
                </li>
                <li><img src="images/WIN_20210731_22_04_53_Pro.jpg" alt="WIN_20210731_22_04_53_Pro"  title="WIN_20210731_22_04_53_Pro" />
                </li>
                <li><img src="images/WIN_20211005_18_30_59_Pro.jpg" alt="WIN_20211005_18_30_59_Pro"  title="WIN_20211005_18_30_59_Pro" />
                </li>
                <li><img src="images/WIN_20211005_18_31_01_Pro.jpg" alt="WIN_20211005_18_31_01_Pro"  title="WIN_20211005_18_31_01_Pro" />
                </li>
            </ul>
            <ul class="amazingslider-thumbnails" style="display:none;">
                <li><img src="images/WIN_20211005_18_30_59_Pro-tn.jpg" alt="WIN_20211005_18_30_59_Pro" title="WIN_20211005_18_30_59_Pro" /></li>
                <li><img src="images/WIN_20211005_18_31_03_Pro-tn.jpg" alt="WIN_20211005_18_31_03_Pro" title="WIN_20211005_18_31_03_Pro" /></li>
                <li><img src="images/WIN_20211005_18_31_05_Pro-tn.jpg" alt="WIN_20211005_18_31_05_Pro" title="WIN_20211005_18_31_05_Pro" /></li>
                <li><img src="images/WIN_20211005_18_31_08_Pro-tn.jpg" alt="WIN_20211005_18_31_08_Pro" title="WIN_20211005_18_31_08_Pro" /></li>
                <li><img src="images/WIN_20210731_22_04_41_Pro-tn.jpg" alt="WIN_20210731_22_04_41_Pro" title="WIN_20210731_22_04_41_Pro" /></li>
                <li><img src="images/WIN_20210731_22_04_41_Pro-tn.jpg" alt="WIN_20210731_22_04_41_Pro" title="WIN_20210731_22_04_41_Pro" /></li>
                <li><img src="images/WIN_20210731_22_04_53_Pro-tn.jpg" alt="WIN_20210731_22_04_53_Pro" title="WIN_20210731_22_04_53_Pro" /></li>
                <li><img src="images/WIN_20211005_18_31_11_Pro-tn.jpg" alt="WIN_20211005_18_31_11_Pro" title="WIN_20211005_18_31_11_Pro" /></li>
                <li><img src="images/WIN_20211005_18_31_01_Pro-tn.jpg" alt="WIN_20211005_18_31_01_Pro" title="WIN_20211005_18_31_01_Pro" /></li>
                <li><img src="images/WIN_20210731_22_04_53_Pro-tn.jpg" alt="WIN_20210731_22_04_53_Pro" title="WIN_20210731_22_04_53_Pro" /></li>
                <li><img src="images/WIN_20211005_18_30_59_Pro-tn.jpg" alt="WIN_20211005_18_30_59_Pro" title="WIN_20211005_18_30_59_Pro" /></li>
                <li><img src="images/WIN_20211005_18_31_01_Pro-tn.jpg" alt="WIN_20211005_18_31_01_Pro" title="WIN_20211005_18_31_01_Pro" /></li>
            </ul>
        <div class="amazingslider-engine"><a href="http://amazingslider.com" title="Responsive JavaScript Slideshow">Responsive JavaScript Slideshow</a></div>
        </div>
    </div>


   




     
          <div style="margin-left:6px; width:980px;">

            <div class="main">
   
    
    <p>
        <asp:DataList ID="DataList2" runat="server" CssClass="auto-style27" Width="931px">
            <ItemTemplate>
                <table class="auto-style26">
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Ad") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image5" runat="server" ImageUrl='<%# Eval("Resim") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Malzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Tarif") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
                </p>
                <p>&nbsp;</p>
    <p>&nbsp;</p>
    <br>

<div class="footer">
  <h2>Tüm Hakları saklıdır-2021</h2>
</div>
    </div>
        
        <%--<div style="border: thick solid #C0C0C0; margin-top:20px;" class="auto-style24"><strong>EN ÇOK TIKLANANLAR
</strong>

            <div class="card" style="width: 18rem; float:left">
  <img class="card-img-top" src="..." alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>




            <div class="card" style="width: 18rem;float:left">
  <img class="card-img-top" src="..." alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>



            <div class="card" style="width: 18rem; float:left" >
  <img class="card-img-top" src="..." alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>



            <div class="card" style="width: 18rem; float:left">
  <img class="card-img-top" src="..." alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>



            <div class="card" style="width: 18rem; float:left">
  <img class="card-img-top" src="..." alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>



            <div class="card" style="width: 18rem; float:left">
  <img class="card-img-top" src="..." alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>


--%>

</div>

     </asp:Content>


