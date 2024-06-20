toolbuilder-manage panel
buildLocalBoardNameSpecWith: aBuilder withBoardName: aString
	
	^ "aBuilder build:" (aBuilder pluggableTextSpec new
		model: self;
		setText: aString;
		yourself).
		