accessing
mouseEnterDragging: anEvent

	self currentLane changeLaneLocalFor: self in: lane.
	self currentLane changeLaneRemoteFor: self id.
	self lane: self currentLane.
	
	
	