initialize-release
applyUserInterfaceTheme

	super applyUserInterfaceTheme.
	addColumnColumn
		ifNotNil: [
			addColumnColumn color: ((self userInterfaceTheme get: #color for: SystemWindow)
				ifNil: [Color lightGray]).].