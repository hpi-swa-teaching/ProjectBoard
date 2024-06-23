context menu
moveToTop

|index|
index := column cards indexOf: self.
column	addCardToTop: self.
column	cards removeAt: index+1.
column	resizeToFitCards.
column	alignCards.