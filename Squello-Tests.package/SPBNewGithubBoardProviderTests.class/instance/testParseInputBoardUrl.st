tests
testParseInputBoardUrl

	| url |
	url := 'https://github.com/user/very-cool-github-name/projects/42'.
	provider parseInputBoardUrl: url.
	self assert: provider boardNr equals: 42.
	self assert: provider user equals: 'very-cool-github-name'.
	self assert: provider projectId equals: '69'.