tests
testSaveIsSameAsLoad
	
	| valueAfterInsertion|
	SPBBoardSaver save: self defaultValue as: self defaultKey.
	valueAfterInsertion := SPBBoardSaver load: self defaultKey.
	
	self assert: valueAfterInsertion = self defaultValue.