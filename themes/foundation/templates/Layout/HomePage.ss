<% loop $LatestArticles(3) %>

	<a href="$Link">$Title</a>
	$Photo.CroppedImage(220, 148)
	<p>$Date.Format('F j, Y')

	<p><% if $Teaser %>$Teaser<% else %>$Content.FirstSentence<% end_if %></p>

<% end_loop %>