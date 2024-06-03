tests
testLoadCreatesCopy
	
	| obj1 obj2 |
	saver save: self copyableObject as: self defaultKey.
	obj1 := saver load: self defaultKey.
	obj2 := saver load: self defaultKey.
	self assert: (obj1 hash = obj2 hash) not.