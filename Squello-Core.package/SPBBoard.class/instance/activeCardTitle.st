update sidebar
activeCardTitle

	self activeCard 
		ifNil: [^ ''].
	^ self activeCard title ifNil: [''].