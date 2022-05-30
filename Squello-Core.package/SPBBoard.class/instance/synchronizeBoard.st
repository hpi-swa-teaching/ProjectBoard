update sidebar
synchronizeBoard
	
	| newLaneArea |
	self createLanes.
	newLaneArea := (self usedBuilder build: (self buildScrollpaneSpecWith: self usedBuilder)).
	self showLanes.
	self window submorphsDo: 
	[:morph | (morph extension externalName = 'laneArea') ifTrue: [morph abandon]].
	self usedBuilder add: newLaneArea to: self window.