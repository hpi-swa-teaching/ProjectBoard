creation
fetchAndBuildSingleCard: aNumber

	self boardProvider createSingleCard: aNumber into: self
	self alignCards.