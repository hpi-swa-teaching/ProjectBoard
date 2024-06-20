toolbuilder-manage panel
buildDeleteLocalBoardButtonSpecWith: aBuilder withBoardName: aString
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Delete';
		yourself.