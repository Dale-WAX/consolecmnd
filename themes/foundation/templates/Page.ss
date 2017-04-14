<% include Header %>

<body class="$ClassName.ATT">
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KGZ76V6"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
    <div id="main" class="main-wrapper">
        <div id="container">
            <div class="sideText left"><div class="sideTextChild">consolecmnd.com</div></div>
            <div class="sideText right"><div class="sideTextChild">consolecmnd.com</div></div>
            <div class="row">
                <div class="small-4 columns logo"><a href="/"><img src="$ThemeDir/images/console-cmnd-logo.svg" class="light" /><img src="$ThemeDir/images/console-cmnd-logo-dark.svg" class="dark" /></a></div>
                <div class="small-8 columns">
                <!--
                    <div class="about">
                        <a href="about.php">About</a>
                    </div>
                -->
                    <% if $Locales %>
                        <ul class="langSelect">
                            <% loop $Locales %>
                                <li class="$LinkingMode">
                                    <!--<a href="$Link.ATT" <% if $LinkingMode != 'invalid' %>rel="alternate" hreflang="$Language"<% end_if %>><% if $Locale = 'en_CA' %>En <% else %> 日本語<% end_if %></a>-->
                                </li>
                            <% end_loop %>
                        </ul>
                    <% end_if %> 
                </div>
            </div>

            <% include TopBar %>
            <% include BgShapes %>
            $Layout
	   </div>
    </div>

<% include Footer %>