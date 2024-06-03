tests
testSaveIsSameAsLoad
	
	| valueAfterInsertion|
	saver save: self defaultValue as: self defaultKey.
	valueAfterInsertion := saver load: self defaultKey.
	
	self assert: valueAfterInsertion = self defaultValue.