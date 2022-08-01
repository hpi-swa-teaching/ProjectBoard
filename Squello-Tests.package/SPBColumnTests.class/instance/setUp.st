running
setUp

	column := SPBColumn new.
	column addDependent: self.
	column boardProvider: SPBMockGithubBoardProvider new.
	column changeProvider: SPBGithubChangeProvider new.
	column pasteup: (SPBPluggablePasteUpMorph new position: 100@200).
	observed := OrderedCollection new.