as yet unclassified
openContextMenu

| menu |

menu := MenuMorph new defaultTarget: self.
menu add: 'toggle closed' action: #toggleClosed.
menu popUpInWorld.