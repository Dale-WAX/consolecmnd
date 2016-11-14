            <div class="row">
				<div class="medium-3 columns">

				</div>
				<div class="medium-9 columns">
					<div class="main-panel">
						<div class="panel" id="info-panel">
							<% loop $LatestArticles(3) %>
								<a href="$Link">$Title</a>
								$Photo.CroppedImage(220, 148)
								<p>$Date.Format('F j, Y')
								<p><% if $Teaser %>$Teaser<% else %>$Content.FirstSentence<% end_if %></p>
							<% end_loop %>
						</div>
					</div>
				</div>
			</div>