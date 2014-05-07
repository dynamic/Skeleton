<div class="sixteen columns alpha omega half-bottom crumbs">
	$Breadcrumbs
</div>
<div class="twelve columns alpha typography">
	<article>
		<h2>$Title</h2>
		<% if $SubTitle %><h3>$SubTitle</h3><% end_if %>
		<div class="content typography">$Content</div>
	</article>

	$Form
	$PageComments
</div>
<div class="four columns sidebar omega">
	<aside>
		<% include SideBar %>
	</aside>
</div>