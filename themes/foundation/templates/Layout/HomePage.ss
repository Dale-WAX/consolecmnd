   <div class="row collapse">
		<div class="medium-10 columns">	
			<div id="first-panel" class="inFromLeft">
				<div id="carousel-bg">
				<% loop $HomeSlides %>
					<div class="home-slide" <% if $Photo %>style="background-image:url('$Photo.FileName')"<% end_if %> ></div>
				<% end_loop %>
				</div>
			</div>
		</div>
	</div>

	<div class="slider-panel">
		<div class="row collapse">
			<div id="carousel-info-container" class="small-10 medium-6 medium-push-6 large-5 large-push-6 columns inFromRight">
				<div id="carousel-info-box" class="">
					<% loop $HomeSlides %>
						<div class="carousel-info">
							<h1><a href="$URLSegment">$Title</a></h1>
						</div>
					<% end_loop %>
				</div>
			</div>
		</div>
	</div>

    <div class="row">
		<div class="medium-1 columns">

		</div>
		<div class="medium-11 columns">
			<div class="main-panel">
				<div class="panel" id="info-panel">

					<div class="grid">
						<% loop $LatestArticles(9) %>
							<div class="grid-item small-12 medium-6 large-4 columns">
								<a href="$Link">
									<div class="dim"></div>
									<h2>$Title</h2>
									<p>$Teaser</p>
									<h3><% loop $Categories %>$Title<% if not $Last %>, <% end_if %><% end_loop %></h3>
									<% if $Thumbnail %>
										<div class="article-bg" style="background-image:url('$Thumbnail.URL');"></div>
									<% else %>
										<div class="gfyitem" style='position:relative; padding-bottom:50%'><iframe src='https://gfycat.com/ifr/$GIF' frameborder='0' scrolling='no' width='100%' height='100%' style='position:absolute;top:0;left:0;' allowfullscreen></iframe></div>
									<% end_if %>
								</a>
							</div>
						<% end_loop %>
					</div>
				</div>
			</div>
		</div>