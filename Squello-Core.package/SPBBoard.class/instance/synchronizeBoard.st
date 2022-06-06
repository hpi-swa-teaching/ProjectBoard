update sidebar
synchronizeBoard
	
	| newLaneArea |
	self createLanes.
	newLaneArea := (self usedBuilder build: (self buildLaneAreaSpecWith: self usedBuilder)).
	self updateLanes.
	self window submorphsDo: 
	[:morph | (morph extension externalName = 'laneArea') ifTrue: [morph abandon]].
	self usedBuilder add: newLaneArea to: self window.