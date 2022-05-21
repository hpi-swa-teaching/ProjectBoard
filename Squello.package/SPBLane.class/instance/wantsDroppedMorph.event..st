card movement
wantsDroppedMorph: aSPBCard event: anEvent
	
	"only accept SPBCards to drop into lane"
	aSPBCard class = SPBCard ifFalse: [^ false].
	^ true.
	