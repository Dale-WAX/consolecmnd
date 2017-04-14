    <div class="row collapse">
		<div class="small-1 columns"></div>
		<div class="small-2 small-offset-9 columns button-position">
			<span class="dropdown">
				<button id="dropbtn" class="dropbtn right hamburger hamburger--spin" type="button">
					<span class="hamburger-box">
						<span class="hamburger-inner"></span>
					</span>
				</button>

				<button id="dropbtn" class="dropbtn bottom hamburger hamburger--spin" type="button">
					<span class="hamburger-box">
						<span class="hamburger-inner"></span>
					</span>
				</button>
			</span>
		</div>
	</div>

	<div id="myDropdown" class="dropdown-content">
		<ul>
		<% loop Menu(1) %>
			<li class="<% if $LinkingMode == "current" || $LinkingMode == "section" %>active<% end_if %><% if $Children %> has-dropdown<% end_if %>" data-equalizer>
				<a href="$Link" title="Go to the $Title.ATT" data-equalizer-watch>$MenuTitle</a>
			</li>
			<% if not $Last %><li class="divider"></li><% end_if %>
		<% end_loop %>
		</ul>
	</div>
