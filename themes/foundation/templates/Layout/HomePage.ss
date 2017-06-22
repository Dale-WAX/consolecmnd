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
                        <div class="instagram-wrapper grid-item small-12 medium-6 large-4 columns">
                            <div id="insta1" class="instagram-container"></div>
                            <h3>Instagram</h3>
                        </div>
						<% loop $LatestArticles(7) %>
							<div class="grid-item small-12 medium-6 large-4 columns">
								<a href="$Link">
									<div class="dim"></div>
									<h2>$Title</h2>
									<p>$Teaser</p>
									<h3><% loop $Categories %>$Title<% if not $Last %>, <% end_if %><% end_loop %></h3>
									<% if $Thumbnail %>
										<div class="article-bg" style="background-image:url('$Thumbnail.URL');"></div>
									<% end_if %>
								</a>
							</div>
						<% end_loop %>
                        <div class="grid-item small-12 medium-6 large-4 columns">
                            <a href="work.php" class="view-all">
                                <h2>See everything over here</h2>
                            </a>
                        </div>
					</div>
				</div>
			</div>
		</div>