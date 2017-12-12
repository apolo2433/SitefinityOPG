<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="Page.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphAdditionalHead" runat="server">

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server" >
	<!-- top banner -->
    <div class="banner-wrapper">
		<img src="assets/img/content/01.jpg" alt="" />
		<div class="banner-content">
			<div class="wrapper">
				<div class="page-title">
					<h1>Page not found</h1>
					<span class="line"></span>
					<i class="fa fa-arrow-circle-o-right"></i>
				</div>
				<ul class="breadcrumb">
					<li><a href="javascript:void(0)">Home</a></li>
					<li>Error 404</li>
				</ul>
			</div>
		</div>
	</div>

    <!-- main wrapper -->
	<div class="content-wrapper error-page">
		<div class="wrapper">
			<div class="row">
	            <!-- central content -->
				<div class=" col-md-offset-3 col-md-6">
	                <div class="content-body rte-content">
                        <p>
                            This might be because:
                        </p>
                        <ul>
                            <li>You have typed the web address incorrectly</li>
                            <li>The page you were looking for may have been moved, updated or deleted</li>
                        </ul>
                        <p>
                            This might be because:
                        </p>
                        <ul>
                            <li>Use our search above to find what you are looking for</li>
                            <li>Go to our <a href="javascript:;">homepage</a></li>
                        </ul>
                    </div>
				</div>

			</div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphAdditionalFooter" runat="server">
</asp:Content>
