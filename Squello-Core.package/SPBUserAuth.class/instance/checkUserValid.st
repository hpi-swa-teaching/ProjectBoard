toolbuilder
checkUserValid

	| boardProvider |
	boardProvider := SPBGithubBoardProvider new.
	^ boardProvider checkIfUserExists: self username.