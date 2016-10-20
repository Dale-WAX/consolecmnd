    <div class="contain-to-grid headerImg" style="background-image:url('<% if $HeaderPhoto %>$HeaderPhoto.FileName<% else %>$Theme/assets/header-photos/fire.gif<% end_if %>')"></div>

    <div class="row collapse">
        <div class="large-12 columns">
            <div class="row pageTitle">
                <div class="small-12 medium-6 columns">
                    <h1>$Title</h1>
                </div>
            </div>

            <div class="row bodyContent collapse" data-equalizer>
                <div class="large-9 columns" data-equalizer-watch>
                    <article>
                        <div class="row collapse">
                            <div class="small-12 medium-3 columns">
                                <% with $Project %>
                                    <% with $Image %>
                                        <img src="$URL" height="$Height" />
                                    <% end_with %>
                                <% end_with %>
                            </div>
                            <div class="small-12 medium-9 columns">
                                <% with $Project %>
                                    <h3>$Name</h3>
                                    $Description
                                <% end_with %>
                            </div>
                        </div>    
                    </article>
                </div>

                <div class="large-3 columns sideNav" data-equalizer-watch>
                    <div class="panel">
                        <ul class="side-nav">
                            <% include SideNavMenuItem %>
                            <li class="divider"></li>
                            <% loop $projects %>
                                <li class="$LinkingMode">
                                    <% if $LinkOrCurrent = current %>
                                        $Title
                                    <% else %>
                                        $LinkOrCurrent
                                        <a href="$Link">$Title</a>
                                    <% end_if %>
                                </li>
                            <% end_loop %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>    