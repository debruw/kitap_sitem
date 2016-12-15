<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="kayıt.aspx.cs" Inherits="kitap_sitem.kayıt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html>
        <head>
            <title></title>
            <link href="kayıt_stil.css" rel="stylesheet" />
            
        </head>
        <body>
            
       <h1>Yeni üyelik kaydı</h1>
            <div class="left" style="width: 470px;">
	<div class="form_big_register">
		<form action="/kayit" id="UserRegisterForm" method="post"  accept-charset="utf-8">
            			
            <div class="input text required">
                <label for="UserUsername">Vikitap Kullanıcı Adınız</label> 
                <asp:TextBox ID="k_adi_txtbox" runat="server"></asp:TextBox>
            </div>			
            <div class="input text required">
                <label for="UserEmail">E-posta</label>
                <asp:TextBox ID="eposta_txtbox" runat="server"></asp:TextBox>
            </div>			
			<div style="width: 100%">
				<div class="left1">
					<label for="UserXPassword">Şifre (min 6 karakter)</label>
                  	<asp:TextBox ID="sifre_txtbox" runat="server"></asp:TextBox>			

				</div>
                
                <div class="left1" >
					<label for="UserPasswordConfirmation">Şifre Tekrar</label>
                     <asp:TextBox ID="sifre2_txtbox" runat="server"></asp:TextBox>			

                </div>

                <div class="clear"></div>
			</div>
			
					<div class="giris_formu tright">
				<asp:Button ID="kayıt_bttn" runat="server" width="80px" onclick="kayit_click" Text="Üye ol" />		
                        

                        <div class="clear"></div>
		</div>
		

		</form>	</div>
</div>
                
        </body>
    </html>

</asp:Content>
