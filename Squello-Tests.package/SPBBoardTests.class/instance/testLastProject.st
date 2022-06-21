as yet unclassified
testLastProject

	| lastProject url |
	url := 'https://api.github.com/bla'.
	lastProject := SPBBoard lastProject.
	SPBBoard lastProject: url.
	self assert: url equals: SPBBoard lastProject.
	SPBBoard lastProject: lastProject.