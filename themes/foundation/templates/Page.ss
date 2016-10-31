<% include Header %>

<body class="$ClassName.ATT">

    <div id="main" class="main-wrapper">

        

        <div id="container">
            <div class="row">
                <div class="large-9 columns"></div>
                <div class="large-3 columns">
                    <% if $Locales %>
                        <ul class="langSelect">
                            <% loop $Locales %>
                                <li class="$LinkingMode">
                                    <a href="$Link.ATT" <% if $LinkingMode != 'invalid' %>rel="alternate" hreflang="$Language"<% end_if %>><% if $Locale = 'en_CA' %>English<% else %>｜日本語<% end_if %></a>
                                </li>
                            <% end_loop %>
                        </ul>
                    <% end_if %> 
                </div>
            </div>

            <% include TopBar %>            

            $Layout
	   </div>
    </div>

<% include Footer %>