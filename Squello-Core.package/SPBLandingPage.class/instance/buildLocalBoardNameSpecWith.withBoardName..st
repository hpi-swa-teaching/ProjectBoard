toolbuilder-manage panel
buildLocalBoardNameSpecWith: aBuilder withBoardName: aString
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: aString;
		yourself.