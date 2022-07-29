columns
renameColumn: anSPBLane to: aString

	| payload |
	payload := Dictionary newFrom: {'name' -> aString}.
	self api updateColumn: anSPBLane id withData: payload.