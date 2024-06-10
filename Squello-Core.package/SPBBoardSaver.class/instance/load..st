save/load
load: anObject

	^ (self loadReadonly: anObject) veryDeepCopy.