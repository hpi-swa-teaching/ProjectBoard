tests
testChangeActiveCardTo

	| usedBuilder board card |
	card := SPBCard new
		title: 'tolleKarte';
		description: 'desc'.
	usedBuilder := SPBMorphicToolBuilder new.
	usedBuilder register: PluggableTextMorph new id: #sidebarTitle.
	usedBuilder register: PluggableTextMorph new id: #sidebarDescription.
	usedBuilder register: PluggableListMorphPlus new id: #sidebarAssigneeList.
	usedBuilder register: PluggableListMorphPlus new id: #sidebarPotentialAssigneeList.
	usedBuilder register: PluggableListMorphPlus new id: #sidebarLabelList.
	usedBuilder register: PluggableListMorphPlus new id: #sidebarPotentialLabelList.
	board := SPBBoard new 
		usedBuilder: usedBuilder; 
		sidebar: SPBSidebar new.
	column board:  board.
	
	column changeActiveCardTo: card.
	self assert: card equals: column board sidebar activeCard.
	self assert: 'tolleKarte' equals: ((usedBuilder widgetAt: #sidebarTitle) textMorph text string).
	self assert: 'desc' equals: ((usedBuilder widgetAt: #sidebarDescription) textMorph text string).