as yet unclassified
openContextMenu

| menu |

menu := MenuMorph new defaultTarget: self.
menu add: 'toggle closed' action: #toggleClosed.
menu stayUp: true. "not intended behaviour, present for testing until default squeak context menu is dealt with"
menu popUpInWorld.