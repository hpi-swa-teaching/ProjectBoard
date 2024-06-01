toolbuilder
buildWith: aBuilder

	
	| spec |
	self usedBuilder: aBuilder.
	spec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Landing Page';
		minimumExtent: 1040@400;
		children:  {
		}
		yourself.
		
	^ self
		window: (aBuilder build: spec);
		window.