toolbuilder
buildAddLaneButtonPanelSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		minimumExtent: (300@200);
		children: {self buildAddLaneButtonSpecWith: aBuilder};
		yourself.