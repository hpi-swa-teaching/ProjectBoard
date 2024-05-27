tests
testLoadCreatesCopy
	
	| obj1 obj2 |
	SPBBoardSaver save: self copyableObject as: self defaultKey.
	obj1 := SPBBoardSaver load: self defaultKey.
	obj2 := SPBBoardSaver load: self defaultKey.
	self assert: (obj1 hash = obj2 hash) not.