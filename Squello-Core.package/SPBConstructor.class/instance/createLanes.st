window construction
createLanes

	| lane lanesJson |
	lanesJson := self provider queryColumns.
	self lanes: (lanesJson collect: 
		[:each | lane := SPBLane newFrom: each. 
		lane provider: self provider]).