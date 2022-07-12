card movement
addIndicatorAt: aPoint
	
	self indicator ifNotNil: [self indicator abandon].
	self indicator: (LineMorph
			from: aPoint
			to: (aPoint x + 280) @ aPoint y
			color: Color orange
			width: 5).
	
	self pasteup addMorph: self indicator.