	
	<footer class="footer" role="contentinfo">
	
		<div class="row">
			<div class="show-for-large-up large-3 columns">
				<img src="$ThemeDir/images/console-cmnd-bud.svg" />
                <img src="$ThemeDir/images/smoke-2.gif" class="smoke" />
			</div>
			<div class="large-9 columns">
				<h1>Other CMND Projects</h1>
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

		<div class="center-footer">
			<div class="row social-copy">
				<div class="medium-6 small-12 columns">
					<ul>
						<% with $SiteConfig %>
							<% if $TwitterLink %>
							<li>
								<a href="$TwitterLink" target="_blank">
									<i class="fa fa-twitter fa-inverse"></i>
									@fatwreck
								</a>
							</li>
							<% end_if %>
                            
							<% if $InstagramLink %>
							<li>
								<a href="$InstagramLink" target="_blank">
									<i class="fa fa-instagram fa-inverse"></i>
									consolecmnd
								</a>
							</li>
							<% end_if %>

							<% if $EmailLink %>
							<li>
								<a href="$EmailLink">
									<i class="fa fa-envelope fa-inverse"></i>
									Email
								</a>
							</li>
							<% end_if %>
						<% end_with %>
					</ul>
				</div>
				<div class="medium-6 small-12 columns">
					<p class="legal">&copy Copyright $SiteConfig.Title</p>
				</div>
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
    
    <% if $URLSegment == 'home' %>
        <script type="text/javascript">
            var feed1 = new Instafeed({
                target: 'insta1',
                clientId: '0be40c9fc2f347daa1242454e8a55ede',
                accessToken: '5426141918.0be40c9.12950f08592d413eb93fbf2292224117',
                get: 'user',
                userId: 5426141918,
                template: '<a href="{{link}}" target="_blank"><img src="{{image}}" width="{{width}}" height="{{height}}" /><p>{{caption}}</p></a>',
                sortBy: 'most-recent',
                limit: 1,
                resolution: 'standard_resolution'
            });      
            feed1.run();

            /*
            window.onload = function () {

                for (var i = 1; i < document.getElementsByClassName('instagram-container').length + 1; i++) {

                (function (i) {
                  var target = document.getElementById('insta' + i);
                  for (var x = 1; x < i; x++) {
                    (function (i, x) {
                      target.removeChild(target.children[0]);
                    })(i, x);
                  }
                  target.children[0].setAttribute('target', '_blank');
                  target.removeAttribute('style');
                })(i);
              }
            }
            */
    <% end_if %>
</script> 
</body>
</html>