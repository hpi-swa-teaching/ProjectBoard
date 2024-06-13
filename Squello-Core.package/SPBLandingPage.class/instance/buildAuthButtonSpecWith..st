toolbuilder-recent boards
buildAuthButtonSpecWith: aBuilder

	^ aBuilder build: (aBuilder pluggableButtonSpec new
		model: self;
		action: #openAuthPanel;
		label: 'Open Auth Panel';
		yourself).