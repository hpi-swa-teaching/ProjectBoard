window construction
buildLanes

	| areaPos lanePos lane|
	areaPos := self board position.
	self board laneCardLinkage: Dictionary new.
	1 to: self lanes size do: 
		[:i | lane := (SPBLane newFrom: (self lanes at: i)) openInWorld.
		self board laneCardLinkage at: (lane id) put: OrderedCollection new.
		self board addMorph: lane.
		lanePos := areaPos x + (i - 1) * 350.
		lane position: lanePos @ (areaPos y).
		lane provider: self provider.
		lane fetchCardsFor: self board laneCardLinkage]. 