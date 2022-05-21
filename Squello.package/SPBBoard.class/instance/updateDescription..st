update sidebar
updateDescription: aText

	"called when there was an edit in the text field"
	self activeCard updateDescription: aText string.
	self sidebarDescription hasUnacceptedEdits: false.