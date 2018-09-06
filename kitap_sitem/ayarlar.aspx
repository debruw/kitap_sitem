<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı.Master" AutoEventWireup="true" CodeBehind="ayarlar.aspx.cs" Inherits="kitap_sitem.ayarlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="profil_stil.css" rel="stylesheet" />

            <div id="content" style="margin-left:200px; " >
                                                
            <h1>Profil ve Hesap Ayarları</h1>
                <div class="tab tab_main"><h1> <asp:Button ID="profil_bttn"  style="background-color:transparent; border:none;" runat="server" Text="Profilim" /></h1></div>
                <div class="tab_content" >
	<form action="/users/profile_settings/299690" class="setting_form" id="UserProfileSettingsForm" method="post" accept-charset="utf-8"><div style="display:none;"><input type="hidden" name="_method" value="POST"><input type="hidden" name="data[_Token][key]" value="1973ae012aab803d1c6cb8b2516976d79128157a" id="Token657796377"></div>	<input type="hidden" name="data[User][id]" value="299690" id="UserId">	<div class="left" style="width:500px;">
		<h1 style="font-weight:bold;color:#666">Genel Bilgiler</h1>
		<a name="isim"></a>
		<div>
			<h3>Adınız</h3>
            <asp:TextBox ID="ad_txtbox" runat="server"></asp:TextBox>
		</div>

		<div>
			<h3>Soyadınız</h3>
            <asp:TextBox ID="soyad_txtbox" runat="server"></asp:TextBox>
        </div>

		<div>
			<h3>E-Postanız <span class="green" style="margin-left:6px;font-size:12px;font-weight:normal"></span></h3>
            <asp:TextBox ID="eposta_txtbox" TextMode="Email" runat="server"></asp:TextBox>
		</div>

		<div>
			<h3>Şehir</h3>
            <asp:TextBox ID="sehir_txtbox" runat="server"></asp:TextBox>
            		</div>

		<div>
			<h3>Doğum Gününüz<span class="hint" style="margin-left:6px;font-size:12px;font-weight:normal">gg-aa-yyyy</span></h3>
			 
            <asp:TextBox ID="d_günü_txtbox" TextMode="Date" runat="server"></asp:TextBox>
				
		</div>

		<div>
			<h3>Cinsiyet</h3>
            <asp:TextBox ID="cinsiyet_txtbox" runat="server"></asp:TextBox>
		</div>

		<div>
			<h3>İlgi Alanları<span class="hint" style="margin-left:6px;font-size:12px;font-weight:normal">virgülle ayırarak yazınız</span></h3>
			<asp:textbox ID="ilgi_alani_txtbox" runat="server" style="height:50px;width:350px"  rows="6"></asp:textbox>		

		</div>

		

		<a name="hakkinda"></a>
		<div>
			<h3>Hakkınızda</h3>
            <asp:TextBox ID="hakkinda_txtbox" runat="server" style="height:50px;width:350px"  rows="6"></asp:TextBox>
	</div>

	
	<div class="submit">
        <asp:Button ID="guncelle_bttn" OnClick="guncelle_bttn_Click" runat="server" Text="Güncelle" />
     </div>

	</form>
                    </div>

                <div class="tab_content2" >
                    <div class="left" style="width:400px;">
                        <h3 style="margin-bottom:5px;">Küçük Resminiz</h3>
                        <img src="" alt="Profil Resmi" class="frame"/>
                    </div>
                    <div class="left" style="width:400px;">
	                <form action="/profil-fotosu" class="setting_form" id="UserChangeProfilePhotoForm" enctype="multipart/form-data" method="post" accept-charset="utf-8"><div style="display:none;"><input type="hidden" name="_method" value="POST"><input type="hidden" name="data[_Token][key]" value="b7620e5c431a54a99b500691661a3b6dc522d1ae" id="Token1813643384"></div>		<div>
			        <h3>Yeni Resminiz</h3>
			        <asp:FileUpload ID="FileUpload1" runat="server" />		</div>
                    <div class="submit"> 
                        <asp:Button ID="resim_kayıt_bttn" OnClick="resim_kayıt_bttn_Click" runat="server" Text="Güncelle" />
                        <asp:Label ID="lblmesaj" runat="server" Text=""></asp:Label>

                    </div>
                        

	                </form>	

                    </div>
                </div>

                <div class="tab_content2" >

	
	<form action="/sifre-degistir" class="setting_form" id="UserChangePasswordForm" method="post" accept-charset="utf-8"><div style="display:none;"><input type="hidden" name="_method" value="POST"><input type="hidden" name="data[_Token][key]" value="7fc001ec58d61afdccf7806c1850d345a29d27a4" id="Token36639370"></div>	<div class="left" style="width:500px;">
		<div>
			<h3>Şifreniz</h3>
            <asp:TextBox ID="sifre_txtbox" runat="server"></asp:TextBox>
		</div>

		<div>
			<h3>Yeni Şifreniz</h3>
            <asp:TextBox ID="yeni_sifre_txtbox" runat="server"></asp:TextBox>
		</div>

		<div>
			<h3>Yeni Şifreniz (Tekrar)</h3>
            <asp:TextBox ID="yeni_sifre2_txtbox" runat="server"></asp:TextBox>
		</div>
	</div>
	<div class="submit">
       <asp:Button ID="sifre_güncelle_bttn" OnClick="sifre_güncelle_bttn_Click" runat="server" Text="Güncelle" />
        <asp:Label ID="sifre_hata_lbl" runat="server" Text=""></asp:Label>
	</div>
        </form>	

                </div>

                        <div class="clear"></div>
     </div>

</asp:Content>
