toolbuilder
buildAddLaneButtonPanelSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		minimumExtent: (300@2000);
		children: {self buildAddLaneButtonSpecWith: aBuilder};
		yourself.