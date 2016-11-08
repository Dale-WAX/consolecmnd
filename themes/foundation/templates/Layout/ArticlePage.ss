            <div id="shapes" class="bg-shapes visible">
                <div class="shape-mask-desktop">
					<div id="options" style="visibility: hidden">
						<div class="option">
							<select id="selIcon"></select>
						</div>
						<div class="option">
							<select id="selEasing"></select>
						</div>
						<div class="option">
							<select id="selDuration"></select>
						</div>
						<div class="option">
							<select id="selRotation"></select>
						</div>
					</div>

					<svg class="icon" viewBox="0 0 1200 850" id="primitive_animation_desktop" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:cc="http://creativecommons.org/ns#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:svg="http://www.w3.org/2000/svg" xmlns="http://www.w3.org/2000/svg">
						<g id="D" display="none">
							<path display="inline" fill="none" stroke="#ffffff" stroke-width="12" stroke-miterlimit="10" d="M692.5,100.5l70.003,69v402 l-175.996,178H437.5v-542l108-107H692.5z M545.5,100.5v541l-108,108 M692.5,100.5l-104,106l-151,1 M654.5,679.531V274.5l-66-68 M545.5,641.5h146.217 M762.503,169.5L654.5,274.5"/>
						</g>
						<g id="M" display="none">
							<path display="inline" fill="none" stroke="#ffffff" stroke-width="12" stroke-miterlimit="10" d="M436.5,637.5L328.496,750.509 l2.002-543.009L438.5,99.492L436.5,637.5z M334.502,207.5H762.5L871.505,91.484l-427.502,0.103 M761.499,209.502l0.999,524 l117.015-111.004V85.479 M548.5,207.5l-1.001,543.009L654.5,635.5V100.493L548.5,207.5z"/>
						</g>
						<g id="N" display="none">
							<path display="inline" fill="none" stroke="#ffffff" stroke-width="12" stroke-miterlimit="10" d="M544.5,643.506L437.5,747.5v-538 l107-109.003V643.506z M762.5,637.506V101.498L655.5,210.5v537L762.5,637.506z M544.5,100.497l219.001,523 M655.5,747.5l-218-538"/>
						</g>
						<g id="C" display="none">
							<path display="inline" fill="none" stroke="#ffffff" stroke-width="12" stroke-miterlimit="10" d="M440.5,745.5l106-110h217 M544.5,100.5l2,535 M440.5,204.5h213v157l110-99v-162h-219L440.5,204.5v541h212l111-110v-152l-109,103l-2,159 M763.5,100.5 l-110,104"/>
						</g>
                    </svg>
                </div>
            </div>			

            <div class="row">
				<div class="medium-3 columns">
					<div class="project-info">
						<em>$Date.Format('F jS, Y')</em>
						<p><p>
					</div>
				</div>
				<div class="medium-9 columns">
					<div class="main-panel">
						<div class="panel" id="about-panel">
							<div class="header section-header about-header">
								<h1>$Title</h1>
							</div>
							<div class="panel-text">
								<div>$Content</div>
							</div>
							<div class="gallery">
								<% if $GalleryImage %>
									<% loop $GalleryImage %>
										<img src="$URL" alt="$Title" />
									<% end_loop %>
								<% end_if %>
							</div>
						</div>
						<p class="project-count"><span>Tags: <% loop $Categories %>$Title<% if not $Last %>, <% end_if %><% end_loop %></span> <span>Project $CurrentPageNumber / $NumberOfSiblings</span></p>
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

	
            
