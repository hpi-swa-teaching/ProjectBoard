tests
testMoveLane

	| ghosts |
	ghosts := ActiveHand submorphs select: [:each | each class = SPBGhostLane].
	
	"self assert: 1 equals: ghosts size.
	ghosts := ghosts at: 1.
	self deny: nil equals: ghosts.
	self assert: self equals: ghosts sourceLane."