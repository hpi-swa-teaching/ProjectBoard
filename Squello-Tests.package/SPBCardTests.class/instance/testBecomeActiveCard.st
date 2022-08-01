tests
testBecomeActiveCard
	
	| board usedBuilder column sidebar |
	usedBuilder := SPBMorphicToolBuilder new.
	usedBuilder register: PluggableTextMorph new id: #sidebarTitle.
	usedBuilder register: PluggableTextMorph new id: #sidebarDescription.
	usedBuilder register: PluggableListMorphPlus new id: #sidebarAssigneeList.
	usedBuilder register: PluggableListMorphPlus new id: #sidebarPotentialAssigneeList.
	usedBuilder register: PluggableListMorphPlus new id: #sidebarLabelList.
	usedBuilder register: PluggableListMorphPlus new id: #sidebarPotentialLabelList.
	sidebar := SPBSidebar new activeCard: nil.
	board := SPBBoard new 
		usedBuilder: usedBuilder;
		sidebar: sidebar.
	column := SPBColumn new board: board.
	card 
		column: column;
		title: 'title'.
	
	card becomeActiveCard.
	self assert: card equals: sidebar activeCard.