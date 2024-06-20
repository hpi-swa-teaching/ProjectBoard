tests
testReadonlyLoad
	
	| obj1 obj2 |
	saver save: self copyableObject as: self defaultKey.
	obj1 := saver loadReadonly: self defaultKey.
	obj2 := saver loadReadonly: self defaultKey.
	self assert: (obj1 hash = obj2 hash).