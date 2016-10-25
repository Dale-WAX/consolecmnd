<div class="contain-to-grid headerImg" style="background-image:url('<% if $HeaderPhoto %>$HeaderPhoto.FileName<% else %>$Theme/assets/ProjectGalleryImages/bun-and-games.jpg<% end_if %>')"></div>
<div id="shapes" class="bg-shapes visible">
<div class="shape-mask-desktop">
<div id="options" style="visibility: hidden">
<div class="option">
<label for="selIcon">Icon:</label>
<select id="selIcon"></select>
</div>
<div class="option">
<label for="selEasing">Easing:</label>
<select id="selEasing"></select>
</div>
<div class="option">
<label for="selDuration">Duration:</label>
<select id="selDuration"></select>
</div>
<div class="option">
<label for="selRotation">Rotation:</label>
<select id="selRotation"></select>
</div>
</div>
        <svg class="icon" viewBox="0 0 1200 850" id="primitive_animation_desktop" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:cc="http://creativecommons.org/ns#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:svg="http://www.w3.org/2000/svg" xmlns="http://www.w3.org/2000/svg">
            <g id="cookieStop" display="none"><!-- L - Bit cookie down / Stop Sign -->
                <path display="inline" fill="none" stroke="#fff" stroke-width="16" stroke-miterlimit="10" d="M373.137 231.162c-27.298-11.282-71.427-19.087-102.318-11.536-31.402 7.676-58.194 24.967-77.284 48.131-27.928 33.889-48.552 104.912-37.322 150.85 7.948 32.513 45.122 66.123 69.522 85.345L449.085 442c12.781-28.311 17.126-79.252 7.474-118.734-9.651-39.482-42.375-75.14-83.422-92.104zm323.826 427.135L547.544 486.415l1.74-218.858L700.29 101.894l230.147 1.434 147.238 159.85-1.412 233.366L927.22 659.731z"/>
            </g>
            <g id="cookieTallStop" display="none"><!-- L - Bit cookie right / Tall Stop Sign -->
                <path display="inline" fill="none" stroke="#fff" stroke-width="16" stroke-miterlimit="10" d="M271.994 187.905c-31.102 4.764-61.024 19.098-85.019 43.009-24.391 24.307-38.907 54.773-43.538 86.411-6.775 46.284 7.603 95.075 43.16 130.757 25.168 25.255 56.938 39.918 89.775 43.99L447.82 321.217c-3.956-32.85-18.51-64.672-49.07-95.338-30.561-30.667-79.992-45.138-126.756-37.974zM927.08 774.188l-230.256-1.435-149.419-171.95 1.998-348.773L700.295 86.24l230.147 1.433 147.353 159.977-1.67 363.282z"/>
            </g>
            <g id="coffinPill" display="none"><!-- L - Coffin / Pill -->
                <path display="inline" fill="none" stroke="#fff" stroke-width="16" stroke-miterlimit="10" d="M530.56 217.895L369.198 81.95l-150.982-6.704-29.422 674.955 188.237 25.326 40.6-150.337zm306.935 542.872c-95.31-11.78-163.026-98.592-151.246-193.903l41.26-333.884C739.286 137.67 826.1 69.955 921.41 81.734h.001c95.31 11.78 163.025 98.593 151.246 193.903l-41.26 333.884c-11.779 95.31-98.592 163.025-193.902 151.246z"/>
            </g>
        </svg>
    </div>
</div>
        
<div class="row">
    <div class="medium-3 columns">
        <em>$Date.Format('F jS, Y')</em>
    </div>
    <div class="medium-9 columns">
        <div class="main-panel">
            <div class="panel" id="about-panel">
                <article>
                    <div class="header section-header">
                        <h1>$Title</h1>
                    </div>
                    
                    $Content
                    $Form

                    <% if $Children || $Parent %><%--Determine if Side Nav should be rendered, you can change this logic--%>
                    <div class="large-3 columns sideNav" data-equalizer-watch>
                        <div class="panel">
                            <% include SideNav %>
                        </div>
                    </div>
                    <% end_if %>                            
                </article>
            </div>
        </div>
    </div>
</div>