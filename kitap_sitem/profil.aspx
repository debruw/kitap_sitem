<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı.Master" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="kitap_sitem.profil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div id="content">
                                                
            <div id="home_left" class="left">
	<div class="left">
		<a href="http://www.vikitap.com/profil/dwebru-299690">
            <img src="http://a.vikitap.com/img/default_profile_m.png" alt="Profil Resmi"/></a>	</div>
	<div class="clear"></div>
		<h3 class="home_left_menu_heading">
				<a href="#" id="my_notifications_anchor" onclick="return false;i">Bildirimler</a>		 <span id="my_new_notification_count" class="rounded" style="text-decoration: none; padding: 1px 3px 1px 3px; color: #fff">0</span>	</h3>
	<h3 class="home_left_menu_heading">
		<a href="/takip-ettiklerim">Takip Ettiklerim</a>	</h3>
	<h3 class="home_left_menu_heading">
		<a href="/takip-edenlerim">Takip Edenler</a>	</h3>
	<h3 class="home_left_menu_heading">
		<a href="/grup/benimkiler">Gruplarım</a>	</h3>
	<h3 class="home_left_menu_heading">
		<a href="/tum-kitaplarim">Tüm Kitaplarım</a>	</h3>
	<h3 class="home_left_menu_heading">
		<a href="/vikitap-istatistikleri/en-begenilen-yorumlar">Vikitap İstatistikler</a>	</h3>
</div>
<div class="left" id="home_mid" style="">

		

</div>


<div id="home_right" class="left mleft">
	


</div>


	
                        
        </div>


</asp:Content>
