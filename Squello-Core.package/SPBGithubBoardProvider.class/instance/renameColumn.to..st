columns
renameColumn: aSPBLane to: aString

	| payload |
	payload := Dictionary newFrom: {'name' -> aString}.
	self api updateColumn: aSPBLane id withData: payload.