api calls
getBoardIDFromUrl: aString

	| response url lastSlashPos projID |
	lastSlashPos := (aString asOrderedCollection lastIndexOf: $/) - 1.
	url := (aString copyFrom: 1 to: 8) , 'api.' , (aString copyFrom: 9 to: 19) , 'repos/' , (aString copyFrom: 20 to: lastSlashPos).
	projID := (aString copyFrom: (lastSlashPos + 2) to: aString size) asNumber.
	
	response := self getRequestToURL: url.
	^ (response at: projID) at: 'id'.