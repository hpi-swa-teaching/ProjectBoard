updating-local
alignLabels

	| previousLabel |
	self labelModels
		withIndexDo: [ :label :index | index = 1
				ifTrue: [label position: self labelBorderOffset @ (self position y + self titleModel extent y + self labelTitleOffset)]
				ifFalse: [previousLabel := self labelModels at: index - 1.
					label position: self labelBorderOffset @ (previousLabel position y + (previousLabel extent y + self inbetweenLabelOffset))]]