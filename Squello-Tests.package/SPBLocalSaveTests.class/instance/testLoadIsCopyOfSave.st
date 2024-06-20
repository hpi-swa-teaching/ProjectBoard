tests
testLoadIsCopyOfSave
	
	| insertedObject loadedObject |
	insertedObject := self copyableObject.
	saver save: insertedObject as: self defaultKey.
	loadedObject := saver load: self defaultKey.
	
	self assert: (insertedObject hash = loadedObject hash) not.