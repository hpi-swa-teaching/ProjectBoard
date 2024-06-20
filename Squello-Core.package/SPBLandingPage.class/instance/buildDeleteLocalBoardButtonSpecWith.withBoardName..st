toolbuilder-manage panel
buildDeleteLocalBoardButtonSpecWith: aBuilder withBoardName: aString
	
	^ "aBuilder build:" (aBuilder pluggableButtonSpec new
		model: self;
		label: 'Delete';
		yourself).
		