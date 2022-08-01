tests
testMoveColumn

	| ghosts |
	column moveColumn.
	ghosts := ActiveHand submorphs select: [:each | each isColumn].
	
	self assert: 1 equals: ghosts size.
	ghosts := ghosts at: 1.
	self deny: nil equals: ghosts.
	self assert: column equals: ghosts sourceColumn.
	
	ActiveHand submorphs do: [:each | each abandon].