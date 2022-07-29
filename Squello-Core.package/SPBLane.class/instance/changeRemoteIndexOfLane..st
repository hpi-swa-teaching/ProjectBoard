creation
changeRemoteIndexOfLane: aNumber

	| lanes |
	lanes := self board lanes.
	aNumber = 1 
		ifTrue: [self boardProvider moveLaneToFront: self] 
		ifFalse: [self boardProvider moveLane: self after: (lanes at: (lanes indexOf: self) - 1)].
