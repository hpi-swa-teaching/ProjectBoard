event handling
handlesMouseOverDragging: anEvent
	
	| hand |
	hand := anEvent hand.
	^ hand hasSubmorphs and: [hand firstSubmorph isCard].
		