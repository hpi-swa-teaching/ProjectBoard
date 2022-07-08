creation
changeRemoteIndexOfLane: aNumber

	| lanes |
	lanes := self board lanes.
	aNumber = 1 
		ifTrue: [self provider moveLaneToFront: self] 
		ifFalse: [self provider moveLane: self after: (lanes at: (lanes indexOf: self) - 1) id].
