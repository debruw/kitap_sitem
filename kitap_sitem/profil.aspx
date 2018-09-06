<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı.Master" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="kitap_sitem.profil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
        <head>
            <title></title>
            <link href="profil_stil.css" rel="stylesheet" />
        </head>
        <body>

       
    
    <div id="content">
                                                
            <div class="home_left" style="width:600px; margin-left:200px; " >
                <div class="mbottom">
	<h1 style="margin-bottom:7px;width:500px;" class="left">
			<asp:Label ID="lbl_k_adi" runat="server" Text="Label"></asp:Label></h1>
                    
		<div class="clear"></div>

	<div class="left">
		<div class="frame">
			<img src="http://a.vikitap.com/img/default_profile_m.png" alt="Profil Resmi">		</div>
		<div style="margin-top:7px;text-align:center">
								</div>
	</div>
	<div class="left mleft" style="width:430px;">
        					
		<div class="profile_info_div">
			<a href="#" style="font-weight:bold">
              <asp:Label ID="lbl_takip_ettigi" runat="server" Text=""></asp:Label> </a>						ettiği ve 
			<a href="#" style="font-weight:bold"><asp:Label ID="lbl_takip_edeni" runat="server" Text=""></asp:Label> </a>			edeni var.
			  <asp:Label ID="lbl_degerlendirme" runat="server" Text=""></asp:Label>		
            <span style="font-weight:normal" class="lblue"> değerlendirme</span>
			
			yapmış. 
		</div>
			</div>
	<div class="clear"></div>
</div>
                <div id="default_tab_user_info">
                    <div class="tab tab_main">
                        <h1>
                            <a href="#">Kitapları</a>
                        </h1>

                    </div>
                    

                </div>
                <div class="tab_content">
		<div> 
		
	<a href="#" class="box_link left"><p>Kütüphanesi</p></a>
            <a href="#" class="box_link left"><div> <asp:Label ID="lbl_kütüphanesi_say" runat="server" Text=""></asp:Label>  </div><p>Kütüphanesi</p></a>	
            <a href="#" class="box_link left mleft5"><div>  <asp:Label ID="lbl_okumus_say" runat="server" Text=""></asp:Label>  </div><p>Okumuş</p></a>	
            <a href="#" class="box_link left mleft5"><div> <asp:Label ID="lbl_okumak_istiyor_say" runat="server" Text=""></asp:Label>  </div><p>Okumak İstiyor</p></a>	
            <a href="#" class="box_link left mleft5"><div> <asp:Label ID="lbl_favori_kitap_say" runat="server" Text=""></asp:Label>  </div><p>Favori Kitapları</p></a>	
            <a href="#" class="box_link left mtop mleft5"><div>  <asp:Label ID="lbl_favori_yazar_say" runat="server" Text=""></asp:Label> </div><p>Favori Yazarları</p></a>	
            <a href="#" class="box_link left mtop mleft5"><div> <asp:Label ID="lbl_takip_edeni_say" runat="server" Text=""></asp:Label>  </div><p>Takip Edeni</p></a>	
            <a href="#" class="box_link left mtop mleft5"><div> <asp:Label ID="lbl_takip_ettigi_say" runat="server" Text=""></asp:Label>  </div><p>Takip Ettiği</p></a>	
            <div class="clear"></div>
</div>
	</div>
                


            </div>

      
        </div>

     </body>
    </html>
</asp:Content>
