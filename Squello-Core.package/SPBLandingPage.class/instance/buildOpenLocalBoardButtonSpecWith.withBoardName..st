toolbuilder-manage panel
buildOpenLocalBoardButtonSpecWith: aBuilder withBoardName: aString
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Open';
		yourself.