tests
testBecomeActiveCard
	
	| board usedBuilder lane |
	usedBuilder := SPBMorphicToolBuilder new.
	usedBuilder register: PluggableTextMorph new id: #sidebarTitle.
	usedBuilder register: PluggableTextMorph new id: #sidebarDescription.
	usedBuilder register: PluggableListMorphPlus new id: #sidebarAssigneeList.
	usedBuilder register: PluggableListMorphPlus new id: #sidebarPotentialAssigneeList.
	usedBuilder register: PluggableListMorphPlus new id: #sidebarLabelList.
	usedBuilder register: PluggableListMorphPlus new id: #sidebarPotentialLabelList.
	board := SPBBoard new activeCard: nil.
	board usedBuilder: usedBuilder.
	lane := SPBLane new board: board.
	card column: lane.
	card title: 'title'.
	
	card becomeActiveCard.
	self assert: card equals: card column board activeCard.