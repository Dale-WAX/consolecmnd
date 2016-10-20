	<div class="main typography" role="main">
		<div class="row">
			<h1>$Title</h1>
			<% loop $AllChildren %>
				<ul>
					<li><a href="$Link">$Title</a></li>
				</ul>
			<% end_loop %>
		</div>
	</div>

