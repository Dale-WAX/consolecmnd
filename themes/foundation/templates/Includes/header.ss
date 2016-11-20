<!doctype html>
<html class="no-js" lang="$ContentLocale" xml:lang="$ContentLocale" xmlns= "http://www.w3.org/1999/xhtml" dir="$i18nScriptDirection.ATT">

<head>
	<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

		ga('create', 'UA-87719302-1', 'auto');
		ga('send', 'pageview');
	</script>

	<!-- Google Tag Manager -->
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-KGZ76V6');</script>
	<!-- End Google Tag Manager -->
	
	<% base_tag %>
	
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> - $SiteConfig.Title</title>
	<meta name="description" content="$MetaDescription.ATT" />
	<link rel="apple-touch-icon-precomposed" sizes="57x57" href="$ThemeDir/images/favicon/apple-touch-icon-57x57.png" />
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="$ThemeDir/images/favicon/apple-touch-icon-114x114.png" />
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="$ThemeDir/images/favicon/apple-touch-icon-72x72.png" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="$ThemeDir/images/favicon/apple-touch-icon-144x144.png" />
	<link rel="apple-touch-icon-precomposed" sizes="60x60" href="$ThemeDir/images/favicon/apple-touch-icon-60x60.png" />
	<link rel="apple-touch-icon-precomposed" sizes="120x120" href="$ThemeDir/images/favicon/apple-touch-icon-120x120.png" />
	<link rel="apple-touch-icon-precomposed" sizes="76x76" href="$ThemeDir/images/favicon/apple-touch-icon-76x76.png" />
	<link rel="apple-touch-icon-precomposed" sizes="152x152" href="$ThemeDir/images/favicon/apple-touch-icon-152x152.png" />
	<link rel="icon" type="image/png" href="$ThemeDir/images/favicon/favicon-196x196.png" sizes="196x196" />
	<link rel="icon" type="image/png" href="$ThemeDir/images/favicon/favicon-96x96.png" sizes="96x96" />
	<link rel="icon" type="image/png" href="$ThemeDir/images/favicon/favicon-32x32.png" sizes="32x32" />
	<link rel="icon" type="image/png" href="$ThemeDir/images/favicon/favicon-16x16.png" sizes="16x16" />
	<link rel="icon" type="image/png" href="$ThemeDir/images/favicon/favicon-128.png" sizes="128x128" />
	<meta name="application-name" content="&nbsp;"/>
	<meta name="msapplication-TileColor" content="#FFFFFF" />
	<meta name="msapplication-TileImage" content="$ThemeDir/images/favicon/mstile-144x144.png" />
	<meta name="msapplication-square70x70logo" content="$ThemeDir/images/favicon/mstile-70x70.png" />
	<meta name="msapplication-square150x150logo" content="$ThemeDir/images/favicon/mstile-150x150.png" />
	<meta name="msapplication-wide310x150logo" content="$ThemeDir/images/favicon/mstile-310x150.png" />
	<meta name="msapplication-square310x310logo" content="$ThemeDir/images/favicon/mstile-310x310.png" />

	<%--http://ogp.me/--%>
	<meta property="og:site_name" content="$SiteConfig.Title.ATT" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="$Title.ATT" />
	<meta property="og:description" content="$MetaDescription.ATT" />
	<meta property="og:url" content="$AbsoluteLink.ATT" />
	<% if $Image %>
		<meta property="og:image" content="<% with $Image.SetSize(500,500) %>$AbsoluteURL.ATT<% end_with %>" />
	<% end_if %>
	<link rel="icon" type="image/png" href="$ThemeDir/favicon.ico" />
	<link rel="stylesheet" href="$ThemeDir/css/hamburger.css" />
	<link rel="stylesheet" href="$ThemeDir/css/app.css" />
	<link rel="stylesheet" type="text/css" href="$ThemeDir/javascript/slick/slick.css"/>
	<script src="$ThemeDir/bower_components/modernizr/modernizr.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Kumar+One+Outline" rel="stylesheet" type="text/css">
</head>