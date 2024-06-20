tests
testContains

	self assert: (saver contains: self defaultKey) not.
	saver save: self defaultValue as: self defaultKey.
	self assert: (saver contains: self defaultKey).