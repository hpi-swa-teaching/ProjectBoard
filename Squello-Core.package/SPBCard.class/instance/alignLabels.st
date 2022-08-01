updating-local
alignLabels

	| previousLabel |
	self labelMorphs
		withIndexDo: [ :label :index | index = 1
				ifTrue: [label position: self labelBorderOffset @ (self position y + self titleMorph extent y + self labelTitleOffset)]
				ifFalse: [previousLabel := self labelMorphs at: index - 1.
					label position: self labelBorderOffset @ (previousLabel position y + (previousLabel extent y + self inbetweenLabelOffset))]]