toolbuilder-recent boards
buildRecentLocalBoardsButtonSpecWith: aBuilder withName: aName

	^ aBuilder build: (aBuilder pluggableButtonSpec new
		model: [SPBBoard openFromPrompt: aName];
		action: #value;
		label: aName;
		yourself).
		
