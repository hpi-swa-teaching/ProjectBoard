context menu
removeAllLabels

	| size |
	size := labels size.
	1 to: size do:[:a | self removeLabel: labels first].
	self column board sidebar
		changed: #potentialLabelsList;
		changed: #activeCardLabelList.