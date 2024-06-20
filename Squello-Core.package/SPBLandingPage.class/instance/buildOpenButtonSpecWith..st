toolbuilder
buildOpenButtonSpecWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openBoard;
		label: 'Open Board';
		yourself.