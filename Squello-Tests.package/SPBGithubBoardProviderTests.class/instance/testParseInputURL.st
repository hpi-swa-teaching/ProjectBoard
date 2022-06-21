tests
testParseInputURL

	| url |
	url := 'https://github.com/coolerUser/coolesRepo/projects/1'.
	provider parseInputBoardUrl: url.

	self assert: 'coolerUser' equals: provider user.
	self assert: 'coolesRepo' equals: provider repo.
	self assert: 14427987 equals: provider projectID. 
	