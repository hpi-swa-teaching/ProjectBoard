tests
testLoadIsCopyOfSave
	
	| insertedObject loadedObject |
	insertedObject := self copyableObject.
	SPBBoardSaver save: insertedObject as: self defaultKey.
	loadedObject := SPBBoardSaver load: self defaultKey.
	
	self assert: (insertedObject hash = loadedObject hash) not.