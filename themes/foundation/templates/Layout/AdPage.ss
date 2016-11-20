            <div class="row">
				<div class="medium-3 columns">
					<div class="project-info">
						<p class="project-count"><em>$Date.Format('Y')</em></p>
						<p class="project-count"><span>Tags<br /><% loop $Categories %>$Title<% if not $Last %>, <% end_if %><% end_loop %></span></p>
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
							<div class="gallery">

								<% if $Image %>
									<img src="$URL" alt="$Title" />
								<% end_if %>

								<% if $Ads %>
									<% loop $Ads %>
										<% if $Image %>
											$Image
										<% end_if %>
										<h2>$Name</h2>
										<p>$Description.FirstParagraph</p>
										<% if not $Last %><hr /><% end_if %>
									<% end_loop %>
								<% end_if %>
							</div>
						</div>
						<p class="project-count"><span>Project $CurrentPageNumber / $NumberOfSiblings</span></p>
					</div>
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