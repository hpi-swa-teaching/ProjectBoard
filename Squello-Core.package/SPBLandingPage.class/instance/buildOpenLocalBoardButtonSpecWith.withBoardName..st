toolbuilder-manage panel
buildOpenLocalBoardButtonSpecWith: aBuilder withBoardName: aString
	
	^ "aBuilder build:" (aBuilder pluggableButtonSpec new
		model: self;
		label: 'Open';
		yourself).
		