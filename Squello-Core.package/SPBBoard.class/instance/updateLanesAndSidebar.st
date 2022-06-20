toolbuilder
updateLanesAndSidebar

	| newLaneArea oldLaneArea oldSidebar newSidebar currentWidth |
	
	
	oldLaneArea := self window submorphs detect: [:morph | (morph extension externalName = 'laneArea')].
	
	currentWidth := oldLaneArea width / self window width.
	
	oldLaneArea abandon.
	newLaneArea := (self usedBuilder build: (self buildLaneAreaSpecWith: self usedBuilder aWidth: currentWidth)).
	
	oldSidebar := self window submorphs detect: [:morph | (morph extension externalName = 'sidebar')].
	oldSidebar abandon.
	newSidebar := (self usedBuilder build: (self buildSidebarSpecWith: self usedBuilder aWidth: currentWidth)). 
	
	self usedBuilder add: newLaneArea to: self window.
	self usedBuilder add: newSidebar to: self window.