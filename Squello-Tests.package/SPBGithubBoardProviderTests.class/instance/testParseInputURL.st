tests
testParseInputURL

	| url |
	url := 'https://github.com/coolerUser/coolesRepo/projects/1'.
	provider parseInputBoardUrl: url.
	
	self assert: 14427987 equals: provider projectId. 
	