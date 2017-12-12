<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="Page.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphAdditionalHead" runat="server">

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server" >
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
					<li>Standard template</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="content-wrapper">
		<div class="wrapper">
			<div class="row">
				<aside class="col-xs-12 col-sm-3 col-md-3 side-nav">
					<ul>
						<li>
							<a href="javascript:void(0)">Level 2 link</a>
						</li>
						<li>
							<a href="javascript:void(0)" class="active">Level 2 link</a>
							<ul>
								<li>
									<a href="javascript:void(0)" class="active">Level 3 link</a>
									<ul>
										<li>
											<a href="javascript:void(0)" class="active">Level 4 link</a>
										</li>
										<li>
											<a href="javascript:void(0)">Level 4 link</a>
										</li>
										<li>
											<a href="javascript:void(0)">Level 4 link</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="javascript:void(0)">Level 3 link</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="javascript:void(0)">Level 2 link</a>
						</li>
						<li>
							<a href="javascript:void(0)">Level 2 link</a>
						</li>
					</ul>
				</aside>
				<div class="col-xs-12 col-sm-9 col-md-9">
					<div class="content-body">
						<div class="rte-content">
							<h1>Header 1</h1>
							<h2>Header 2</h2>
							<h3>Header 3</h3>
							<p class="intro-text">
								Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum
							</p>
							<div class="text-with-image clearfix">
								<h4>h4 title</h4>
								<div>
									<img src="http://placehold.it/270x175"/>
									<p>
										Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was <a href="javascript:void(0)">Link style</a> popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum
									</p>
								</div>
							</div>
							<ul>
								<li>Bullet list style</li>
								<li>Bullet list style</li>
								<li>Bullet list style</li>
							</ul>
							<ol>
								<li>Number list style</li>
								<li>Number list style</li>
								<li>Number list style</li>
							</ol>
							<p>
								<a href="javascript:void(0)" class="more">CTA link style lorem ipsum</a>
							</p>
							<table>
								<thead>
									<tr>
										<th>Table heading</th>
										<th>Table heading</th>
										<th>Table heading</th>
										<th>Table heading</th>
										<th>Table heading</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Table content</td>
										<td>Table content</td>
										<td>Table content</td>
										<td>Table content</td>
										<td>Table content</td>
									</tr>
									<tr>
										<td>Table content</td>
										<td>Table content</td>
										<td>Table content</td>
										<td>Table content</td>
										<td>Table content</td>
									</tr>
									<tr>
										<td>Table content</td>
										<td>Table content</td>
										<td>Table content</td>
										<td>Table content</td>
										<td>Table content</td>
									</tr>
									<tr>
										<td>Table content</td>
										<td>Table content</td>
										<td>Table content</td>
										<td>Table content</td>
										<td>Table content</td>
									</tr>
									<tr>
										<td>Table content</td>
										<td>Table content</td>
										<td>Table content</td>
										<td>Table content</td>
										<td>Table content</td>
									</tr>
								</tbody>
							</table>
							<h3>Accordion style</h3>
							<div class="accordion">
								<div class="accordion-item-wrapper">
									<p class="accordion-head">Accordion head</p>
									<div class="accordion-body">
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was <a href="javascript:void(0)">Link style</a> popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
									</div>
								</div>
								<div class="accordion-item-wrapper">
									<p class="accordion-head">Accordion head</p>
									<div class="accordion-body">Accordion body</div>
								</div>
								<div class="accordion-item-wrapper">
									<p class="accordion-head">Accordion head</p>
									<div class="accordion-body">Accordion body</div>
								</div>
								<div class="accordion-item-wrapper">
									<p class="accordion-head">Accordion head</p>
									<div class="accordion-body">Accordion body</div>
								</div>
							</div>
							<a class="btn" href="javascript:void(0)">Button</a>
							<h3>Tabs style</h3>
							<div class="tabs">
								<ul class="tab-links clearfix">
									<li class="active" data-tab-link="tab-1"><a href="javascript:void(0)">2015</a></li>
									<li data-tab-link="tab-2"><a href="javascript:void(0)">2014</a></li>
									<li data-tab-link="tab-3"><a href="javascript:void(0)">2013</a></li>
									<li data-tab-link="tab-4"><a href="javascript:void(0)">2012</a></li>
									<li data-tab-link="tab-5"><a href="javascript:void(0)">2011</a></li>
								</ul>
								<div class="tab-content">
									<div class="tab" data-tab-content="tab-1">
										Lorem Ipsum is simply dummy text of the printing and typesetting industry.
										Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
										when an unknown printer took a galley of type and scrambled it to make a type specimen book.
										Lorem Ipsum is simply dummy text of the printing and typesetting industry.
										Lorem Ipsum is simply dummy text of the printing and typesetting industry.
									</div>
									<div class="tab" data-tab-content="tab-2">Tab content 2</div>
									<div class="tab" data-tab-content="tab-3">Tab content 3</div>
									<div class="tab" data-tab-content="tab-4">Tab content 4</div>
									<div class="tab" data-tab-content="tab-5">Tab content 5</div>
								</div>
							</div>
							<h3>Spotlights example</h3>
							<div class="spotlights row">
								<div class="col-md-12">
									<div class="col-xs-12 col-sm-4">
										<div class="item">
											<img src="http://placehold.it/270x180"/>
											<p class="title">Spotlight example</p>
											<div class="description">
												<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
												Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
												when an unknown printer took a galley of type and scrambled it to make a type specimen book.
												Lorem Ipsum is simply dummy text of the printing and typesetting industry.
												Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
											</div>
											<a href="javascript:void(0)" class="more">CTA link style lorem ipsum</a>
										</div>
									</div>
									<div class="col-xs-12 col-sm-4">
										<div class="item">
											<img src="http://placehold.it/270x180"/>
											<p class="title">Spotlight example</p>
											<div class="description">
												<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
												Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
												when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
											</div>
											<a href="javascript:void(0)" class="more">CTA link style lorem ipsum</a>
										</div>
									</div>
									<div class="col-xs-12 col-sm-4">
										<div class="item">
											<img src="http://placehold.it/270x180"/>
											<p class="title">Spotlight example</p>
											<div class="description">
												<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
												Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
												when an unknown printer took a galley of type and scrambled it to make a type specimen book.
												Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
											</div>
											<a href="javascript:void(0)" class="more">CTA link style lorem ipsum</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphAdditionalFooter" runat="server">
</asp:Content>
