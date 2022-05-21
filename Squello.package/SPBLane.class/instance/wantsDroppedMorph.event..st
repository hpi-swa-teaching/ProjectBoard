accessing
wantsDroppedMorph: aSPBCard event: anEvent

	self changeLaneLocalFor: aSPBCard in: aSPBCard lane.
	self changeLaneRemoteFor: aSPBCard id. 
	aSPBCard lane: self id.
	
	^ true.
	