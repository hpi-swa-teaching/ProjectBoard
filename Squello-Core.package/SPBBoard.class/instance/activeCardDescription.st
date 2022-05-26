as yet unclassified
activeCardDescription

	self activeCard ifNil: [^ ''].
	^ self activeCard description ifNil: [''].