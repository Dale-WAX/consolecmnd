            <div class="row">
                <div class="medium-3 columns">
                    
                </div>
                <div class="medium-9 columns">
                    <div class="main-panel">
                        <div class="panel" id="info-panel">
                            <div class="header section-header info-header">
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
                    </div>
                </div>
            </div>

    
            
