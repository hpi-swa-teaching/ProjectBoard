running
setUp

	lane := SPBLane new.
	lane addDependent: self.
	observed := OrderedCollection new.