toolbuilder
buildAddColumnButtonPanelSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		minimumExtent: self class columnMinimumExtent;
		children: {(self buildAddColumnButtonSpecWith: aBuilder)};
		yourself.