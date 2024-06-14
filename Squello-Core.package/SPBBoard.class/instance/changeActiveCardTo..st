update sidebar
changeActiveCardTo: anSPBCard

	self sidebar activeCard toggleIsHighlighted.
	anSPBCard toggleIsHighlighted.
	self sidebar activeCard: anSPBCard.
	(self usedBuilder widgetAt: #sidebarTitle) setText: anSPBCard title asText.
	(self usedBuilder widgetAt: #sidebarDescription) setText: anSPBCard description asText.
	(self usedBuilder widgetAt: #sidebarAssigneeList) updateList.
	(self usedBuilder widgetAt: #sidebarPotentialAssigneeList) updateList.
	(self usedBuilder widgetAt: #sidebarLabelList) updateList.
	(self usedBuilder widgetAt: #sidebarPotentialLabelList) updateList.