card movement
addIndicatorAt: aPoint
	
	self indicator verticesAt: 1 put: aPoint.
	self indicator verticesAt: 2 put: (aPoint x + 280) @ aPoint y.
	
	self indicator show.
	
