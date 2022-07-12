as yet unclassified
handlesMouseOverDragging: evt

	^ evt hand hasSubmorphs 
		and: [evt hand firstSubmorph class == SPBCard].