accessing
getProjectNames
	
	^ self projects collect: [:each | each at: 'name'].