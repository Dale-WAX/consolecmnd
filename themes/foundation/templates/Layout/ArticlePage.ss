            <div class="row">
				<div class="medium-3 columns">
					<div class="project-info">
						<p><span>Created</span><br />$Date.Month, $Date.Year</p>
						<p><span>Tags</span><br /><% loop $Categories %>$Title<% if not $Last %>, <% end_if %><% end_loop %></p>
					</div>
				</div>
				<div class="medium-9 columns">
					<div class="main-panel">
						<div class="panel" id="info-panel">
							<div class="header section-header info-header">
								<h1>$Title</h1>
							</div>
							<div class="panel-text">
								<div>$Content</div>
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
						<div class="small-6 columns">
							<% control PrevNextPage(prev) %>
								<div class="prev-next-link prev" data-equalizer-watch>
									<a href="$Link" title="Go to $Title">Previous Project<br /><span>- $Title</span></a>   
								</div>
							<% end_control %>
						</div>
						
						<div class="small-6 columns">	
							<% control PrevNextPage(next) %> 
								<div class="prev-next-link next" data-equalizer-watch>
									<a href="$Link" title="Go to $Title">Next Project<br /><span>$Title -</span></a>
								</div>
							<% end_control %>
						</div>	
					</div>
				</div>
			</div>