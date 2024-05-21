accessing
buildNote: aJsonObject
	
	self
		isNote: true;
		title: (aJsonObject at: 'note');
		description: ''.