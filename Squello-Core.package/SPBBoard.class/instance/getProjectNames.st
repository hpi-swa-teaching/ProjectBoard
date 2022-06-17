accessing
getProjectNames

	self projects isArray ifFalse: [(self projects at: 'message') ifNotNil: [^ self error: (self projects at: 'message')]].
	^ self projects collect: [:each | each at: 'name'].