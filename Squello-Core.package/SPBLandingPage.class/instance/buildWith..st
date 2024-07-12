toolbuilder
buildWith: aBuilder

	| spec |
	self usedBuilder: aBuilder.
	spec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Squello Hub';
		minimumExtent: self class minExtentHorizontal px @ self class minExtentVertical px;
		children: {
			self buildMainLayoutPanelSpecWith: aBuilder.
		};
		yourself.
	^ aBuilder build: spec.
