update sidebar
changeActiveCardTo: aSPBCard

	self activeCard: aSPBCard.
	(self usedBuilder widgetAt: #sidebarTitle) setText: aSPBCard title asText.
	(self usedBuilder widgetAt: #sidebarDescription) setText: aSPBCard description asText.
	(self usedBuilder widgetAt: #sidebarAssigneeList) updateList.
	(self usedBuilder widgetAt: #sidebarPotentialAssigneeList) updateList.