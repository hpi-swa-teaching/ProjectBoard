comparing
= anSBPAbstractCard
	"Answer whether the receiver and anObject represent the same object."

	self == anSBPAbstractCard
		ifTrue: [^ true].
	self class = anSBPAbstractCard class
		ifFalse: [^ false].
	^ self id = anSBPAbstractCard id.