toolbuilder
buildOpenButtonSpecWith: aBuilder

	^ aBuilder build: (aBuilder pluggableButtonSpec new
		model: self;
		action: #openBoard;
		label: 'Open Board';
		yourself).