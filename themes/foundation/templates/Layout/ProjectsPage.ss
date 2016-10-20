	<div class="contain-to-grid headerImg" style="background-image:url('<% if $HeaderPhoto %>$HeaderPhoto.FileName<% else %>$Theme/assets/header-photos/fire.gif<% end_if %>')"></div>

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
			 			
			 			<% loop $Projects %>
							<div class="row collapse">
								<div class="large-4 columns">
						            <% with $Image.SetWidth(200) %>
						            	<img src="$URL" width="$Width" height="$Height" class="projects-img" />
						            <% end_with %>
						        </div>
						        <div class="large-8 columns">
									<h2><a href="$Link">$Name</a></h2>
									<p>$Description.FirstParagraph</p>
						        </div>
							</div>
							<% if not $Last %><hr /><% end_if %>
						<% end_loop %>
					</article>
		        </div>

		        <div class="large-3 columns sideNav" data-equalizer-watch>
		            <div class="panel">
						<% include SideNav %>
						<% if $newsfeed && $Parent.Title == 'Our Company' %>
							<% include NewsFeed %>
						<% end_if %>
		            </div>
		        </div>
		    </div>
        </div>
    </div>