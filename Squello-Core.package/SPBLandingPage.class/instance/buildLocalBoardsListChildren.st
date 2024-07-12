toolbuilder-manage panel
buildLocalBoardsListChildren

	^ ( SPBBoardSaver defaultSaver boards keys 
		collect: [:aString | self buildLocalBoardPanelSpecWith: self usedBuilder withName: aString] ) asOrderedCollection.
	