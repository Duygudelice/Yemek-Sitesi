<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="Proje1.Hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style14 {
        text-align: center;
        font-size: x-large;
        color:grey;
        margin-top:0px;

    }
    .auto-style15 {
        
        font-size: x-large;
       
        
    }
    .auto-style19 {
        
        font-size: x-large;
        margin-left:25px;
        margin-top:0px;
      
       
        
    }
    .auto-style16 {
        
        margin-left:0px;
    }
    
        .auto-style23 {
            margin-top: -10px;
            margin-left: 0px;
        }
          .auto-style24 {
            font-size:20px;
            margin-left: 0px;
            margin-top: 0px;
            height:auto;
        }

    
    
        </style>
    
</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style14">
    <strong>Hakkımızda</strong></p>

    <asp:Image ID="Image2" runat="server" Height="329px" ImageUrl="~/resimler/hakkımızda.jpg" Width="626px" CssClass="auto-style23" />

<div CssClass="auto-style19">
    <asp:DataList ID="DataList2" runat="server"  Width="622px" CssClass="auto-style24" >
        <ItemTemplate>
            
           <p CssClass="auto-style24"><asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label></p>

        </ItemTemplate>
    </asp:DataList>
</div>
<p class="auto-style15">
    &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
</asp:Content>

