as yet unclassified
restartAll
	| botNr |
	ui BotListCanvas submorphs do: [ :s | 
		botNr := ui BotListCanvas submorphIndexOf: s.
		((bots at: botNr) at: 1) disconnect.
		(bots at: botNr put: (self startBot: (bots at: botNr))).].
	self removeStoppedBots.