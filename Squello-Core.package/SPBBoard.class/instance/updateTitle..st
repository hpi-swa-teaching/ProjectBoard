update sidebar
updateTitle: aText
	
	"called when there was an edit in the text field"
	self activeCard updateTitle: aText string.
	self sidebarTitle hasUnacceptedEdits: false.