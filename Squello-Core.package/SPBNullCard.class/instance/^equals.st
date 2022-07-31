as yet unclassified
= anSPBAbstractCard
	"Answer whether the receiver and anObject represent the same object."

	self == anSPBAbstractCard
		ifTrue: [^ true].
	self class = anSPBAbstractCard class
		ifFalse: [^ false].
	^ anSPBAbstractCard isRealCard not.