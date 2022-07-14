toolbuilder
updateLanesAndSidebar

	| newLaneArea oldLaneArea oldSidebar newSidebar currentWidth |
	oldLaneArea := self usedBuilder widgetAt: #laneArea.
	
	currentWidth := oldLaneArea width / self window width.
	
	oldLaneArea abandon.
	newLaneArea := (self usedBuilder build: (self buildLaneAreaSpecWith: self usedBuilder width: currentWidth)).
	
	oldSidebar := self usedBuilder widgetAt: #sidebar.
	oldSidebar abandon.
	newSidebar := (self usedBuilder build: (self buildSidebarSpecWith: self usedBuilder witdh: currentWidth)). 
	
	self usedBuilder add: newLaneArea to: self window.
	self usedBuilder add: newSidebar to: self window.