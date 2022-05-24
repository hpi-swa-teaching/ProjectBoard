as yet unclassified
setUp

	board := SPBBoard new.
	description := SPBMockPluggableTextMorph new.
	title := SPBMockPluggableTextMorph new.
	
	board sidebarDescription: description.
	board sidebarTitle: title.