<% if Pages %>
	<a href="/">Home</a> <span class="green-text">&nbsp;&nbsp;/&nbsp;&nbsp;</span>
	<% loop Pages %>
		<% if Last %>$Title.XML.LimitCharacters(20)<% else %><a href="$Link">$MenuTitle.XML.LimitCharacters(20)</a> <span class="green-text">&nbsp;&nbsp;/&nbsp;&nbsp;</span> <% end_if %>
	<% end_loop %>
<% end_if %>