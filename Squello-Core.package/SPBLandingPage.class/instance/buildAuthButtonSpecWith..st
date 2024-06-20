toolbuilder
buildAuthButtonSpecWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openAuthPanel;
		label: 'Open Auth Panel';
		yourself.