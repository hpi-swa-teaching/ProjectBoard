accessing
updateEditView: anSPBCard

	self activeCard: anSPBCard.
	self editViewTitle setText: anSPBCard title.
	self editViewDescription setText: (anSPBCard description ifNil:[''] ifNotNil: [anSPBCard description]).