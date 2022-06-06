toolbuilder
buildAddLaneButtonPanelSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		minimumExtent: (300@2000);
		color: (Color blue);
		children: {self buildAddLaneButtonSpecWith: aBuilder};
		yourself.