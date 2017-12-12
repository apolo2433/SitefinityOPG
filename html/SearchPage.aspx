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
					<h1>Search results</h1>
					<span class="line"></span>
					<i class="fa fa-arrow-circle-o-right"></i>
				</div>
				<ul class="breadcrumb">
					<li><a href="javascript:void(0)">Home</a></li>
					<li>Search results</li>
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
                    <div class="search">
                        <h4>search again</h4>
    					<div class="inner">
    						<input type="text" placeholder="Search">
    						<button><i class="zmdi zmdi-search"></i></button>
    					</div>
                    </div>
				</aside>

	            <!-- central content -->
				<div class="col-xs-12 col-sm-9 col-md-9">
	                <div class="content-body">
                        <div class="search-results">
                            <p class="intro-text">
                                Your search for <span>'lorem ipsum'</span> returned the following <span>20 results:</span>
                            </p>
                            <ul>
                                <li>
                                    <h2>
                                        <a href="javascript:;">title</a>
                                    </h2>
                                    <p>
                                        Donec luctus egestas interdum <a href="javascript:;">lorem ipsum</a> magna id turpis ornare finibus quis ac enim. Quisque lacinia, leo et feugiat dapibus, nisi ligula scelerisque veritas natus audem...
                                    </p>
                                </li>
                                <li>
                                    <h2>
                                        <a href="javascript:;">title</a>
                                    </h2>
                                    <p>
                                        Donec luctus egestas interdum <a href="javascript:;">lorem ipsum</a> magna id turpis ornare finibus quis ac enim. Quisque lacinia, leo et feugiat dapibus, nisi ligula scelerisque veritas natus audem...
                                    </p>
                                </li>
                                <li>
                                    <h2>
                                        <a href="javascript:;">title</a>
                                    </h2>
                                    <p>
                                        Donec luctus egestas interdum <a href="javascript:;">lorem ipsum</a> magna id turpis ornare finibus quis ac enim. Quisque lacinia, leo et feugiat dapibus, nisi ligula scelerisque veritas natus audem...
                                    </p>
                                </li>
                            </ul>
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
