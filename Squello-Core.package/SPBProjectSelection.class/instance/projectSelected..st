accessing
projectSelected: anObject

	"(anObject isKindOf: String) ifFalse: [^ self]."

	projectSelected := anObject.
	self changed: #projectSelected.
	