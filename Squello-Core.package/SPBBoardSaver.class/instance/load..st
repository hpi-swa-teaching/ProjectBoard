save/load
load: anObject

	^ self boards at: anObject
		ifAbsent: nil.