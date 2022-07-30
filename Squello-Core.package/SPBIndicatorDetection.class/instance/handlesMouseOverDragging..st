as yet unclassified
handlesMouseOverDragging: anEvent
	
	| hand |
	hand := anEvent hand.
	^ hand hasSubmorphs and: [hand firstSubmorph class == SPBCard].
		