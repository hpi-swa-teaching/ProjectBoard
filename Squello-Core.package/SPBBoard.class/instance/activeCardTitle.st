as yet unclassified
activeCardTitle

	self activeCard ifNil: [^ ''].
	^ self activeCard title ifNil: [''].