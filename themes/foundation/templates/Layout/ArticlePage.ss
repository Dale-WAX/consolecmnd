<script>
  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://assets.gfycat.com/gfycat.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'gfycat-js'));
</script>

<div class="row image">
            <div class="gfyitem columns large-12" data-title=false data-autoplay=true data-controls=false preload="auto" data-id="foolishrigidgrunion"></div>
        </div>
        <div class="row image">
            <div class='gfyitem columns large-12' data-title=false data-autoplay=true data-controls=false preload="auto"  data-id=NimbleEarnestCollardlizard></div>
        </div>
        
        
        <div class="row">
            <div class="large-12 columns">
                <section class="devices layout--offscreen v--no-topmargin  v--no-sidepad">
                    <div class="deviceset">
                        <div class="device device-browser">
                            <div class="device-body">
                                <div class="sproule-home-page img v--scrolling" style=""></div>
                                <span class="device-controls"></span>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        
        
<!--
        <div class="row">
            <div class="large-12 columns">
                <section class="devices layout--3up scheme--darkgrey v--has-bgimage">
                    <div class="deviceset">
                        <div class="device device-browser v--fullborder">
                            <div class="device-body">
                                <img src="/img/mit.home.1280.width-1600.jpg" width="1280" height="3180" />
                                <span class="device-controls"></span>
                                <span class="device-caption caption">Home Page</span>
                            </div>
                        </div>
                        
                        <div class="device device-browser v--fullborder">
                            <div class="device-body">
                                <img src="/img/mit.home.1280.width-1600.jpg" width="1280" height="3180" />
                                <span class="device-controls"></span>
                                <span class="device-caption caption">Home Page</span>
                            </div>
                        </div>
                        
                        <div class="device device-browser v--fullborder">
                            <div class="device-body">
                                <img src="/img/mit.home.1280.width-1600.jpg" width="1280" height="3180" />
                                <span class="device-controls"></span>
                                <span class="device-caption caption">Home Page</span>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        
        <div class="row">
            <div class="large-12 columns">
                <section class="devices layout--offscreen v--no-topmargin  v--no-sidepad">
                    <div class="deviceset">
                        <div class="device device-browser">
                            <div class="device-body">
                                <div class="sproule-home-page img v--scrolling" style=""></div>
                                <span class="device-controls"></span>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
-->
        
            
            
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
						<% if $AwardURL %>
                            <p><span>Awards</span><br /><a href="http://$AwardURL" target="_blank">$AwardTitle</a></p>
                            <a href="http://$AwardURL" target="_blank"><img src="$AwardImage.URL" alt="$AwardTitle" /></a>
						<% end_if %>
					</div>
				</div>
				<div class="medium-9 columns">
					<div class="main-panel">
						<div class="panel" id="info-panel">
							<% if $SiteVideo %>
							<div class="SiteVideo">
								<iframe src='$SiteVideo' frameborder="0" scrolling="no" width="100%" height="100%" style="position:absolute;top:0;left:0;" allowfullscreen></iframe>
							</div>
							<% end_if %>
                            
							<% if $GIF %>
							<div class="GifVideo">
                                <!--<div style="position:relative;padding-bottom:94%;"><iframe src='https://gfycat.com/ifr/$GIF' frameborder="0" scrolling="no" width="100%" height="100%" style="position:absolute;top:0;left:0;" allowfullscreen></iframe></div>-->
                                <iframe src='https://gfycat.com/ifr/$GIF' frameborder="0" scrolling="no" width="100%" height="100%" style="position:absolute;top:0;left:0;" allowfullscreen></iframe>
							</div>
							<% end_if %>

							<div class="header section-header info-header">
								<h1>$Title</h1>
							</div>
							<div class="panel-text">
								<div>$Content</div>
                                <div class="awardsMobile">
                                    <% if $AwardURL %>
                                        <h4>Awards</h4><a href="http://$AwardURL" target="_blank">$AwardTitle</a></p>
                                        <a href="http://$AwardURL" target="_blank"><img src="$AwardImage.URL" alt="$AwardTitle" /></a>
                                    <% end_if %>
                                </div>
							</div>
							<div class="row collapse">
							
							<% if $Ads %>
								<div class="ads">
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
									<div class="medium-12 columns">
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