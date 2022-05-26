as yet unclassified
changeActiveCardTo: aSPBCard

	self activeCard: aSPBCard.
	(self usedBuilder widgetAt: #sidebarTitle) setText: aSPBCard title asText.
	(self usedBuilder widgetAt: #sidebarDescription) setText: aSPBCard description asText.