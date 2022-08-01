tests
testMoveColumn

	| ghosts |
	column moveColumn.
	ghosts := ActiveHand submorphs select: [:each | each isCard].
	
	self assert: 1 equals: ghosts size.
	ghosts := ghosts at: 1.
	self assert: (nil = ghosts) not.
	self assert: column equals: ghosts sourceColumn.
	
	ActiveHand submorphs do: [:each | each abandon].