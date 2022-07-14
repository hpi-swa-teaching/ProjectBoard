as yet unclassified
handlesMouseOverDragging: anEvent

	^ anEvent hand hasSubmorphs and: [anEvent hand firstSubmorph class == SPBCard].
		