updating
alignLabels
	
	| previousLabel |
	self labelMorphs 
		withIndexDo: [:each :index | index = 1 
				ifTrue: [each position: 4 @ (self position y + self titleMorph extent y + 10)]
				ifFalse: [previousLabel := self labelMorphs at: index -1.
					each position: (4 @ ((previousLabel position y) + (previousLabel extent y + 2)))]].