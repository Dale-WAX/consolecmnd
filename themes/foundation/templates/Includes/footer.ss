	
	<footer class="footer" role="contentinfo">
	
		<div class="row">
			<div class="large-3 columns">
				<h1>Other Projects</h1>
			</div>
			<div class="large-9 columns">
				<% loop Menu(1) %>
					<% if $Children %>
					<ul>
						<% loop $Children %>
						<li class="<% if $LinkingMode == "current" || $LinkingMode == "section" %>active<% end_if %><% if $Children %> has-dropdown<% end_if %>" data-equalizer>
							<a href="$Link" title="Go to the $Title.ATT" data-equalizer-watch>$MenuTitle</a>
							<% if not $Last %><li class="divider"> | </li><% end_if %>
							<% if $Children %>
							<ul class="dropdown">
								<% loop $Children %>
								<li class="<% if $LinkingMode == "current" || $LinkingMode == "section" %>active<% end_if %>"><a href="$Link" title="Go to the $Title.ATT">$MenuTitle</a></li>
								<% end_loop %>
							</ul>
							<% end_if %>
						</li>
						<% end_loop %>
					</ul>
					<% end_if %>
				<% end_loop %>
			</div>
		</div>
	</footer>
	

	<%--Login Modal--%>
	<div id="login-form-modal" class="reveal-modal medium" data-reveal>
		<h2>Login</h2>
		$LoginForm
		<a class="close-reveal-modal">&#215;</a>
	</div>

    <!--[if lt IE 10]>
        <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.2/html5shiv.js"></script>
        <script src="//s3.amazonaws.com/nwapi/nwmatcher/nwmatcher-1.2.5-min.js"></script>
        <script src="//html5base.googlecode.com/svn-history/r38/trunk/js/selectivizr-1.0.3b.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.1.0/respond.min.js"></script>
        <link rel="stylesheet" type="text/css" href="$ThemeDir/css/ie9.css" />
    <![endif]-->

	<%--See [Requirements](http://doc.silverstripe.org/framework/en/reference/requirements) for loading from controller--%>
	
	<script src="$ThemeDir/bower_components/jquery/dist/jquery.min.js"></script>
	<script src="$ThemeDir/bower_components/foundation/js/foundation.min.js"></script>
	
	<!--
	<script src="$ThemeDir/javascript/gs/jquery.gsap.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>
	-->
	<script src="$ThemeDir/javascript/svg-morpheus.js"></script>
</body>
</html>