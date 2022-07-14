update sidebar
activeCardDescription

	self activeCard 
		ifNil: [^ ''].
	^ self activeCard description ifNil: [''].