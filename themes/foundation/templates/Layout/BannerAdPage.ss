

    <div class="row collapse">
        <div class="large-12 columns">
            <div class="row pageTitle">
                <div class="small-12 medium-6 columns">
                    <h1>$Title</h1>
                </div>
            </div>

		    <div class="row bodyContent collapse" data-equalizer data-equalize-by-row="true">
		        <div class="large-9 columns" data-equalizer-watch>
		        	<article>
			 			$Content
			 			
			 			<% loop $BannerAds %>
							<div class="row collapse">
								<div class="large-4 columns">
						           
						        </div>
						        <div class="large-8 columns">
									<h2>$Name</h2>
									<p>$Description.FirstParagraph</p>
						        </div>
							</div>
							<% if not $Last %><hr /><% end_if %>
						<% end_loop %>
					</article>
		        </div>

		        
		    </div>
        </div>
    </div>