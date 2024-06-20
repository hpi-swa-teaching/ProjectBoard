assignees
listPossibleAssigneesForProject: aString

	"aString => ProjectID"
	| data response repositories |
	data := (self getPossibleAssigneesQuery: aString) parseAsJson.
	response := self postRequestwithData: data.
	repositories := (((response at: 'data') at: 'node') at: 'repositories') at: 'nodes'.
	
	self flag: #TODO.
	"TODO add support for multi repo projects"
	^ (repositories first at: 'assignableUsers') at: 'nodes'.