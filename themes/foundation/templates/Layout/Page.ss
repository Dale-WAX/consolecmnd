            <div class="row">
                <div class="medium-3 columns">
                    
                </div>
                <div class="medium-9 columns">
                    <div class="main-panel">
                        <div class="panel" id="info-panel">
                            <div class="header section-header info-header padding">
                                <h1>$Title</h1>
                            </div>
                            <div class="panel-text padding">
                                <div>$Content</div>
                                <div class="login">$Form</div>
                            </div>
                            <% if $GalleryImage %>
                                <div class="gallery">
                                    <% loop $GalleryImage %>
                                        <h3>$Title</h3>
                                        <img src="$URL" alt="$Title" />
                                    <% end_loop %>
                                </div>
                            <% end_if %>
                        </div>
                    </div>
                </div>