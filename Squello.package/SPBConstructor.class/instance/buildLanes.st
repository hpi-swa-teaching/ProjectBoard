accessing
buildLanes

	| areaPos lanePos lane|
	areaPos := self boardArea position.
	1 to: self lanes size do: 
		[:i | lane := (SPBLane newFrom: (self lanes at: i)) openInWorld.
		self boardArea addMorph: lane.
		lanePos := areaPos x + (i - 1) * 350.
		lane position: lanePos @ (areaPos y).
		lane provider: self provider.
		lane fetchCards]. 