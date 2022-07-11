toolbuilder
checkUserValid

	| provider |
	provider := SPBGithubBoardProvider new.
	^ (((provider checkUser: self userName) at: 'message') = 'Not Found') not.