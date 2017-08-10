<script>
  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://assets.gfycat.com/gfycat.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'gfycat-js'));
</script>

<div class="row">
	<div class="medium-3 columns">
		<div class="project-info">
			<p><span>Created</span><br />$Date.Month, $Date.Year</p>
			<% if $Categories %>
			<p><span>Tags</span><br /><% loop $Categories %>$Title<% if not $Last %>, <% end_if %><% end_loop %></p>
			<% end_if %>
			<% if $SiteURL %>
			<p><span>URL</span><br /><a href="http://$SiteURL" target="_blank">$SiteURL</a></p>
			<% end_if %>
            <% if $Awards %>
                <p class="awards"><span>Awards</span><br />
                <% loop $Awards %>
                    <a href="http://$AwardURL" target="_blank">$AwardTitle<br /><em>$AwardDescription</em>
                    <img src="$AwardImage.URL" alt="$AwardTitle" /></a>     
                <% end_loop %>
                </p>
            <% end_if %>
		</div>
	</div>
	<div class="medium-9 columns">
		<div class="main-panel">
			<div class="panel" id="info-panel">
		        <div class="header section-header info-header padding">
					<h1>$Title</h1>
				</div>
				<div class="panel-text padding">
					$Content
                    <% if $Awards %>
                        <div class="awardsMobile">
                            <h4>Awards</h4>
                            <% loop $Awards %>
                                <a href="http://$AwardURL" target="_blank"><span>$AwardTitle<br /><em>$AwardDescription</em></span>
                                <img src="$AwardImage.URL" alt="$AwardTitle" /></a>    
                            <% end_loop %>
                        </div>
                    <% end_if %>
				</div>

                <% if $GIF %>
                <div class="GifVideo">
                <section class="devices layout--browser">
                    <div class="deviceset">
                        <div class="device device-browser v--fullborder">
                            <div class="device-body">
                                <div class="video-wrapper">
                                    <video playsinline="" webkit-playsinline="" poster="https://thumbs.gfycat.com/HonoredBadBluet-poster.jpg" class="i-amphtml-fill-content i-amphtml-replaced-content" loop="" autoplay="">
                                        <source id="webmSource" src="https://fat.gfycat.com/{$GIF}.webm" type="video/webm">
                                        <source id="mp4Source" src="https://fat.gfycat.com/{$GIF}.mp4" type="video/mp4">
                                    </video>
                                </div>
                                <span class="device-controls"></span>
                            </div>
                        </div>
                    </div>
                </section>
                </div>
                <% end_if %>

                <% if $Content2 %>
                    <div class="panel-text padding">
                        $Content2
                    </div>
                <% end_if %>

                <% if $WebScrollerImage %>
                    <% loop $WebScrollerImage %>
                        <section class="devices layout--browser">
                            <div class="deviceset">
                                <div class="device device-browser v--fullborder">
                                    <div class="device-body">
                                        <div class="img v--scrolling" style="background-image: url('$URL')"></div>
                                        <span class="device-controls"></span>
                                    </div>
                                </div>
                            </div>
                        </section>
                    <% end_loop %>
                <% end_if %>

                <% if $WebLayoutImage %>
                    <section class="devices layout--3up">
                        <div class="deviceset">
                            <% loop $WebLayoutImage %>
                                <div class="device device-browser v--fullborder">
                                    <div class="device-body">
                                        <img src="$URL" width="1300" height="3130" />
                                        <span class="device-controls"></span>
                                        <span class="device-caption caption">$Title</span>
                                    </div>
                                </div>
                            <% end_loop %>
                        </div>
                    </section>
                <% end_if %>

                <% if $Content3 %>
                <div class="panel-text padding content3">
                    $Content3
                </div>
                <% end_if %>

                <% if $WebDevicesBrowser %>
                <section class="devices layout--suite">
                    <div class="deviceset">
                        <div class="device device-browser v--fullborder">
                            <div class="device-body">
                                <div class="img v--scrolling" style="background-image: url('$WebDevicesBrowser.URL')"></div>
                                <span class="device-controls"></span>
                            </div>
                        </div>
                        <div class="device device-tablet">
                            <div class="device-body">
                                <div class="img v--scrolling" style="background-image: url('$WebDevicesTablet.URL')"></div>
                                <span class="device-controls"></span>
                            </div>
                        </div>
                        <div class="device device-phone">
                            <div class="device-body">
                                <div class="img v--scrolling" style="background-image: url('$WebDevicesPhone.URL')"></div>
                                <span class="device-controls"></span>
                            </div>
                        </div>
                    </div>
                </section>
                <% end_if %>


				<div class="row collapse">
				
				<% if $Ads %>
				<div class="ads padding">
				<% loop $Ads.Sort(Date, DESC) %>
				<%if $AdWidth <= 700 %>
					<div class="medium-12 columns">
						<div class="bannerAd">
							<h3>$Name</h3>
							<div class="row collapse" data-equalizer>
								<div class="bigbox" data-equalizer-watch>
									<iframe id="$FileName-iframe" width="$AdWidth" height="$AdHeight" src="$Files.Filename"></iframe>
								</div>
								<div class="bigbox desc" data-equalizer-watch>
									<% if $Description %>
										<p>$Description</p>
									<% end_if %>
					        		<a id="$FileName-replay" class="replay-btn" href="javascript:void(0);" onclick="replay(this.id);">Replay</a>
								</div>
							</div>
						</div>
					</div>
					<% else %>
					<div class="medium-12 columns padding">
						<div class="bannerAd">
							<h3>$Name</h3>
							<div class="row collapse">
								<div class="leaderboard-note">
									<pre><span>Leaderboard ad available at larger browser sizes. (1245px)</pre>
								</div>
								<div class="leaderboard">
									<iframe id="$FileName-iframe" width="$AdWidth" height="$AdHeight" src="$Files.Filename"></iframe>
								</div>
								<div class="leaderboard desc">
									<% if $Description %>
										<p>$Description</p>
									<% end_if %>
					        		<a id="$FileName-replay" class="replay-btn" href="javascript:void(0);" onclick="replay(this.id);">Replay</a>
								</div>
							</div>
						</div>
					</div>									
				<% end_if %>		
				<% if not $Last %><hr /><% end_if %>
				<% end_loop %>
				</div>
				<% end_if %>

                <% if $WebGalleryImage %>
                <section class="devices layout--1up">
                    <div class="deviceset">
                        <% loop $WebGalleryImage %>
                            <div class="device device-browser v--fullborder">
                                <div class="device-body">
                                    <img src="$URL" width="1300" height="3130" />
                                    <span class="device-controls"></span>
                                    <span class="device-caption caption">$Title</span>
                                </div>
                            </div>
                        <% end_loop %>
                    </div>
                </section>
                <% end_if %>

                <% if $WebLayoutImage %>
                    
                <% end_if %>

				<% if $GalleryImage %>
				<div class="gallery">
					<% loop $GalleryImage %>
						<h3>$Title</h3>
						<img src="$URL" alt="$Title" />
					<% end_loop %>
				</div>
				<% end_if %>

			</div>
		</div>

		<p class="project-count"><span>Project $CurrentPageNumber / $NumberOfSiblings</span></p>
		<div class="row" data-equalizer>
			<div class="small-12 medium-6 columns">
				<% control PrevNextPage(prev) %>
					<div class="prev-next-link prev" data-equalizer-watch>
						<a href="$Link" title="Go to $Title">Previous Project<br /><span>$Title</span></a>   
					</div>
				<% end_control %>
			</div>
			
			<div class="small-12 medium-6 columns">	
				<% control PrevNextPage(next) %> 
					<div class="prev-next-link next" data-equalizer-watch>
						<a href="$Link" title="Go to $Title">Next Project<br /><span>$Title</span></a>
					</div>
				<% end_control %>
			</div>	
		</div>

	</div>
</div>

<div class="row ani-wallpaper">
    <div class="large-12 columns">
    </div>
</div>