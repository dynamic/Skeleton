<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="$ContentLocale"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="$ContentLocale"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="$ContentLocale"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="$ContentLocale"> <!--<![endif]-->
<head>
	<% base_tag %>
	<meta charset="utf-8">
	<title><% if ClassName != DynamicHomePage %><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; <% end_if %>$SiteConfig.Title</title>
	$MetaTags(false)
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico">
	<link rel="apple-touch-icon" href="$ThemeDir/images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="$ThemeDir/images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="$ThemeDir/images/apple-touch-icon-114x114.png">

</head>
<body>
	<div class="container">
		<div class="sixteen columns header">
			<div class="five columns alpha brand">
				<% include HeaderConfig %>
			</div>
			<div class="eleven columns omega navigation">
				<nav class="utility">
					<ul >
						<li><a href="/gallery/">Gallery</a></li>
						<li><a href="/search/">Search</a></li>
						<% if $CurrentMember %><li><a href="/typography/">Typography</a></li><% end_if %>
						<li class="social first"><a href="facebook.com" title="Facebook" target="_blank" class="fb"><span>Facebook</span></a></li>
						<li class="social"><a href="twitter.com" title="Twitter" target="_blank" class="tw"><span>Twitter</span></a></li>
						<li class="social"><a href="google.com" title="Google" target="_blank" class="go"><span>Google +</span></a></li>
						<li class="social"><a href="linkedin.com" title="LinkedIn" target="_blank" class="li"><span>LinkedIn</span></a></li>
					</ul>
				</nav>
				<nav class="primary" id="access">
					<ul class="remove-bottom">
						<% loop Menu(1) %>	  
							<li class="$LinkingMode <% if Last %>last-parent<% end_if %>"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
								<% if Children %>
									<ul class="child">
										<% loop Children %>
										<li class="<% if Last %>last-child<% end_if %>"><a href="$Link" class="$LinkingMode">$MenuTitle.XML</a></li>
										<% end_loop %>
									</ul>
								<% end_if %>
							</li>
						<% end_loop %>
					</ul>
				</nav>
				<nav class="mobile-navigation">
					<ul id="mobilenavs" class="clearfix remove-bottom">
						<li id="mobile-nav-click"><a href="#" id="mobile-nav-anchor" class="mobilemenu"><img src="$ThemeDir/images/mobile-menu.png" alt="Mobile Menu Graphic"></a>
							<ul class="mobilemenulist">
								<% loop Menu(1) %>
								  <li class="$LinkingMode"><a href="$Link" title="Go to the &quot;{$Title}&quot; page">$MenuTitle</a></li>
								<% end_loop %>
							</ul>
						</li>
					</ul>
				</nav>
			</div>		
				
		</div>
		
		
		
		<div class="sixteen columns clearfix content">
			$Layout
		</div>
		
		
		
		<div class="sixteen columns footer">
			<div class="three columns alpha social">
				<ul class="remove-bottom">
					<li><a href="facebook.com" title="Facebook" target="_blank" class="fb"><span>Facebook</span></a></li>
					<li><a href="twitter.com" title="Twitter" target="_blank" class="tw"><span>Twitter</span></a></li>
					<li><a href="google.com" title="Google" target="_blank" class="go"><span>Google +</span></a></li>
					<li><a href="linkedin.com" title="LinkedIn" target="_blank" class="li"><span>LinkedIn</span></a></li>
				</ul>
			</div>
			<div class="ten columns">
				 
				<nav class="footerNav">
					<ul>
						<li><a href="/"><%--$SiteConfig.Title--%>Home</a></li>
						<% if SiteConfig.FooterLinkList %>
							<% loop SiteConfig.FooterLinkList %>
								<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
							<% end_loop %>
						<% end_if %>
					</ul>
				</nav>
				
			</div>
			<div class="three columns omega text-right">
				<% if SiteConfig.CompanyName %>&copy; $Now.Year $SiteConfig.CompanyName <br><br>  $SiteConfig.FullAddressHTML<br>$SiteConfig.PhoneNumber<% end_if %>
			</div>
		</div>
	</div>
	$SilverStripeNavigator
</body>
</html>