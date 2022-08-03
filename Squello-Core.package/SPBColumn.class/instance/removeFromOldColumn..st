card movement
removeFromOldColumn: anSPBCard
	
	anSPBCard column cards
		remove: anSPBCard 
			ifAbsent: [].
	anSPBCard column resizeToFitCards.
	anSPBCard column alignCards.