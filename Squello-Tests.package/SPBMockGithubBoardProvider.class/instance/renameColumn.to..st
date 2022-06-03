as yet unclassified
renameColumn: aSPBLane to: aString

	^ JsonObject new
		at: 'name' put: aString.