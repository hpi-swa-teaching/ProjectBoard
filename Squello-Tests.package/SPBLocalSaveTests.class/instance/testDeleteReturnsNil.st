tests
testDeleteReturnsNil
	"the delete happens in setUp"
	
	| loadedValue |
	loadedValue := SPBBoardSaver load: self defaultKey.
	self assert: loadedValue isNil.