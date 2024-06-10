toolbuilder
buildRecentLocalBoardsButtonSpecWith: aBuilder withName: aName


	^ aBuilder pluggableButtonSpec new
		model: self;
		label: aName;
		yourself.
		
