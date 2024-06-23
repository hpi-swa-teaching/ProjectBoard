context menu
removeAllLabels

|size|
size := labels size.
1 to: size do:[:a|self removeLabel: labels first].
"labels do:[:label | self removeLabel: label]."
self column board sidebar
	changed: #potentialLabelsList;
	changed: #activeCardLabelList.