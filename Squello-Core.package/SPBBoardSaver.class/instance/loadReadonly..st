save/load
loadReadonly: anObject

	^ self boards at: anObject ifAbsent: nil.