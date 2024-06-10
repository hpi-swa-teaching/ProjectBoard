toolbuilder
buildRecentLocalBoardsButtonSpecWith: aBuilder withName: aName


	^ aBuilder build: (aBuilder pluggableButtonSpec new
		model: self;
		label: aName;
		yourself).
		
