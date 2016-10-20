    <div class="contain-to-grid headerImg" style="background-image:url('<% if $HeaderPhoto %>$HeaderPhoto.FileName<% else %>$Theme/assets/header-photos/fire.gif<% end_if %>')"></div>

    <div class="row collapse">
        <div class="large-12 columns">
            <div class="row pageTitle">
                <div class="small-12 medium-6 columns">
                    <h1>$Title</h1>
                </div>
            </div>

            <div class="row bodyContent collapse" data-equalizer data-equalize-by-row="true">
                <div class="<% if $Children || $Parent %>large-9 <% else %>large-12<% end_if %>columns" data-equalizer-watch>
                    <article>
                        $Content
                        $Form
                    </article>
                </div>

                <% if $Children || $Parent %><%--Determine if Side Nav should be rendered, you can change this logic--%>
                <div class="large-3 columns sideNav" data-equalizer-watch>
                    <div class="panel">
                        <% include SideNav %>
                    </div>
                </div>
                <% end_if %>
            </div>
        </div>
    </div>