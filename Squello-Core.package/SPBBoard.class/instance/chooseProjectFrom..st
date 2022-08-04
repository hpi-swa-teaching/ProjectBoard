initialize-release
chooseProjectFrom: aCollection

	| projectNames chosenProject |
	projectNames := aCollection collect: [:project | project at: 'name'].
	chosenProject := UIManager default 
		chooseFrom: projectNames
		values: aCollection
		title: 'Choose your project:'.
	^ chosenProject ifNil: [^ self].