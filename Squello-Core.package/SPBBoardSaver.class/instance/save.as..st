save/load
save: anObject as: anotherObject

	self boards at: anotherObject put: anObject veryDeepCopy.