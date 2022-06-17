as yet unclassified
testGetProjectNames

	| projects names |
	
	projects := {
		JsonObject new
			at: 'name' put: 'test1'.
		JsonObject new
			at: 'name' put: 'test2'
		}.
	board projects: projects.
	names := {'test1' . 'test2'}.
	self assert: names equals: board getProjectNames.