tests
testClear

	| loadedValue |
	saver save: self defaultValue as: self defaultKey.
	saver clear.
	loadedValue := saver load: self defaultKey.
	self assert: loadedValue isNil.