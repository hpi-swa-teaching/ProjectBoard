updating-local
moveCardWith: aDictionary

	| newColumn |
	newColumn := self column board columnFromId: (aDictionary at: 'columnId').
	newColumn removeFromOldColumn: self.
	(aDictionary at: 'after')
		ifNil: [newColumn cards addFirst: self]
		ifNotNil: [newColumn cards add: self after: (newColumn cardFromId: (aDictionary at: 'after'))].
	newColumn addCardLocal: self.