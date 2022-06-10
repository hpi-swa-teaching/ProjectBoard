creation
changeIndex: aNumber

	| index |
	index := self board lanes indexOf: self.
	
	index = aNumber ifTrue: [^ self]. "don't move"
	index < aNumber ifTrue: [ "move ahead"
		self board lanes removeAt: index.
		self board lanes add: self beforeIndex: aNumber - 1]
	ifFalse: [ "move back"
		self board lanes removeAt: index.
		self board lanes add: self beforeIndex: aNumber].
	self halt.
	
	
	self board changed: #buildLaneAreaChildren.
	self board lanes do: [:each | each cards: OrderedCollection new].
	self board showLanes.