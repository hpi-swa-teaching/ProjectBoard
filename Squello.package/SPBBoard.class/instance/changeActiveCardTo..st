update sidebar
changeActiveCardTo: anSPBCard

	self activeCard: anSPBCard.
	self sidebarTitle setText: anSPBCard title.
	self sidebarDescription setText: (anSPBCard description ifNil:[''] ifNotNil: [anSPBCard description]).