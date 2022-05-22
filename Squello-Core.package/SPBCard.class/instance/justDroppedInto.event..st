accessing
justDroppedInto: aMorph event: anEvent
	"called when card ist dropped into something"
	
	aMorph class = SPBLane ifTrue:
		[aMorph moveIn: self].