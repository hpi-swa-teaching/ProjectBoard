toolbuilder
buildWith: aBuilder

	| spec |
	self usedBuilder: aBuilder.
	spec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Landing Page';
		minimumExtent: 500px @200px;
		children: 
			{self buildMainLayoutPanelSpecWith: aBuilder.
		};
		
		yourself.
	^ aBuilder build: spec.
