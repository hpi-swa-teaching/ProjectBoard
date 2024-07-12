toolbuilder
buildWith: aBuilder

	| spec |
	self usedBuilder: aBuilder.
	spec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Squello Hub';
		minimumExtent: self minExtentHorizontal px @ self minExtentVertical px;
		children: {
			self buildMainLayoutPanelSpecWith: aBuilder.
		};
		yourself.
	^ aBuilder build: spec.
