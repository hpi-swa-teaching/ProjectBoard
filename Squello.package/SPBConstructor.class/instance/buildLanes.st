window construction
buildLanes

	| areaPos lanePos lane|
	areaPos := self boardArea position.
	self boardArea laneCardLinkage: Dictionary new.
	1 to: self lanes size do: 
		[:i | lane := (SPBLane newFrom: (self lanes at: i)) openInWorld.
		self boardArea laneCardLinkage at: (lane id) put: OrderedCollection new.
		self boardArea addMorph: lane.
		lanePos := areaPos x + (i - 1) * 350.
		lane position: lanePos @ (areaPos y).
		lane provider: self provider.
		lane fetchCardsFor: self boardArea laneCardLinkage]. 