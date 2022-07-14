toolbuilder
updateLanesAndSidebar

	| newLaneArea oldLaneArea oldSidebar newSidebar currentWidth |
	oldLaneArea := self usedBuilder widgetAt: #laneArea.
	
	currentWidth := oldLaneArea defaultWidth / self window width.
	
	oldLaneArea abandon.
	newLaneArea := (self usedBuilder build: (self buildLaneAreaSpecWith: self usedBuilder aWidth: currentWidth)).
	
	oldSidebar := self usedBuilder widgetAt: #sidebar.
	oldSidebar abandon.
	newSidebar := (self usedBuilder build: (self buildSidebarSpecWith: self usedBuilder aWidth: currentWidth)). 
	
	self usedBuilder add: newLaneArea to: self window.
	self usedBuilder add: newSidebar to: self window.