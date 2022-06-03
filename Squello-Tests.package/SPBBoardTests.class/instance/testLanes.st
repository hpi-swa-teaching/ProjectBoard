as yet unclassified
testLanes

	| lane1 lane2 lanes |
	
	lane1 := SPBLane new.
	lane2 := SPBLane new.
	lanes := OrderedCollection newFrom: {lane1 . lane2}.
	board lanes: lanes.
	
	self assert: lanes equals: board lanes.