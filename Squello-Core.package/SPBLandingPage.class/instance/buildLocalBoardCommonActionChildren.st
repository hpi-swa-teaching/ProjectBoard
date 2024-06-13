toolbuilder-manage panel
buildLocalBoardCommonActionChildren

	^ {self buildDeleteAllLocalBoardsButtonSpecWith: self usedBuilder. self buildNewLocalBoardButtonSpecWith: self usedBuilder} asOrderedCollection.