card movement
addIndicatorAt: aPoint
	
	self indicator
		verticesAt: 1 put: aPoint;
		verticesAt: 2 put: (aPoint x + SPBCard defaultCardExtent x) @ aPoint y;
		show.