tests
testDeleteReturnsNil
	
	| loadedValue |
	saver save: self defaultValue as: self defaultKey.
	saver delete: self defaultKey.
	loadedValue := saver load: self defaultKey.
	self assert: loadedValue isNil.