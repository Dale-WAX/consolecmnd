            <div class="row">
				<div class="medium-1 columns">

				</div>
				<div class="medium-11 columns">
					<div class="main-panel">
						<div class="panel" id="info-panel">
							<div class="grid">
							  	<div class="grid-sizer"></div>
							  	<div class="gutter-sizer"></div>
								<% loop $AllChildren %>
									
									<div class="grid-item">
									<a href="$Link">
										<div class="dim"></div>
										<h2>$Title</h2>
										<p>$Teaser</p>
										<h3><% loop $Categories %>$Title<% if not $Last %>, <% end_if %><% end_loop %></h3>
										<% if $Thumbnail %>
											<div class="article-bg" style="background-image:url('$Thumbnail.URL');"></div>
										<% else %>
											<img class="gfyitem" data-expand=true data-id="$GIF" />
										<% end_if %>
									</a>
									</div>

								<% end_loop %>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script>
				(function (d, t) {
				    var g = d.createElement(t),
				        s = d.getElementsByTagName(t)[0];
				    g.src = 'http://assets.gfycat.com/js/gfyajax-0.517d.js';
				    s.parentNode.insertBefore(g, s);
				}(document, 'script'));
			</script>