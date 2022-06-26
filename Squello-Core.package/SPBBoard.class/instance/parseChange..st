accessing
parseChange: aJsonObject
	
	"Code to parse a given change"
	Transcript show: (aJsonObject at: 'action'), Character cr.