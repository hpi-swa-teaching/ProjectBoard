tests
testGetProjects

	| repoUrl projects |
	
	repoUrl := 'https://github.com/SaturnHafen/squeak-issue-integration-test'.
	projects := provider getProjects: repoUrl.
	self assert: 'SaturnHafen' equals: provider user.
	self assert: 'squeak-issue-integration-test' equals: provider repo.
	