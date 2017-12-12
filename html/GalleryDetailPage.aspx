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
					<h1>Page title</h1>
					<span class="line"></span>
					<i class="fa fa-arrow-circle-o-right"></i>
				</div>
				<ul class="breadcrumb">
					<li><a href="javascript:void(0)">Home</a></li>
                    <li><a href="javascript:void(0)">Media</a></li>
                    <li><a href="javascript:void(0)">Image Gallery</a></li>
					<li>Chennai</li>
				</ul>
			</div>
		</div>
	</div>

    <!-- main wrapper -->
	<div class="content-wrapper">
		<div class="wrapper">
			<div class="row">

	            <!-- left sidebar -->
	            <aside class="col-xs-12 col-sm-3 col-md-3 side-nav">
					<ul>
	                    <li>
	                        <a href="javascript:void(0)">Latest news</a>
	                    </li>
	                    <li>
	                        <a href="javascript:void(0)">Image gallery</a>
	                    </li>
	                    <li>
	                        <a href="javascript:void(0)">Regulatory news</a>
	                    </li>
	                    <li>
	                        <a href="javascript:void(0)">Media contact</a>
	                    </li>
	                </ul>
				</aside>

	            <!-- central content -->
				<div class="col-xs-12 col-sm-9 col-md-9">
	                <div class="content-body">
	                    <div class="gallery library">
	                        <div class="row">
	                            <div class="gallery-item col-md-4  col-xs-6">
	                                <a href="/assets/img/content/gallery01.jpg">
                                        <img src="/assets/img/content/gallery01s.jpg">
                                    </a>
	                            </div>
	                            <div class="gallery-item col-md-4  col-xs-6">
	                                <a href="javascript:void(0)">
                                        <img src="http://placehold.it/270x180">
                                    </a>
	                            </div>
	                            <div class="gallery-item col-md-4  col-xs-6">
	                                <a href="javascript:void(0)">
                                        <img src="http://placehold.it/270x180">
                                    </a>
	                            </div>
	                            <div class="gallery-item col-md-4  col-xs-6">
	                                <a href="javascript:void(0)">
                                        <img src="http://placehold.it/270x180">
                                    </a>
	                            </div>
	                            <div class="gallery-item col-md-4  col-xs-6">
	                                <a href="javascript:void(0)">
                                        <img src="http://placehold.it/270x180">
                                    </a>
	                            </div>
	                            <div class="gallery-item col-md-4  col-xs-6">
	                                <a href="javascript:void(0)">
                                        <img src="http://placehold.it/270x180">
                                    </a>
	                            </div>
	                            <div class="gallery-item col-md-4  col-xs-6">
	                                <a href="javascript:void(0)">
                                        <img src="http://placehold.it/270x180">
                                    </a>
	                            </div>
	                        </div>
	                    </div>
                        <ul class="paging">
                            <li class="prev">
                                <a href="javascript:;"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i>Prev</a>
                            </li>
                            <li>
                                <a href="javascript:;" class="active">1</a>
                            </li>
                            <li>
                                <a href="javascript:;">2</a>
                            </li>
                            <li>
                                <a href="javascript:;">3</a>
                            </li>
                            <li>
                                <a href="javascript:;">4</a>
                            </li>
                            <li class="next">
                                <a href="javascript:;" class="active">Next<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i></a>
                            </li>
                        </ul>
	                </div>
				</div>

			</div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphAdditionalFooter" runat="server">
</asp:Content>
