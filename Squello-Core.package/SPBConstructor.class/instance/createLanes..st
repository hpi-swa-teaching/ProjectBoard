as yet unclassified
createLanes: aJsonObject

	| lane |
	self lanes: (aJsonObject collect: [:each | lane := SPBLane newFrom: each. 
		lane provider: self provider. 
		lane]).