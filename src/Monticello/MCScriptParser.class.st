"
A MCScriptParser identifies script and add MCScriptDefinition. 
"
Class {
	#name : 'MCScriptParser',
	#superclass : 'MCDoItParser',
	#category : 'Monticello-Chunk Format',
	#package : 'Monticello',
	#tag : 'Chunk Format'
}

{ #category : 'factory identification hook' }
MCScriptParser class >> pattern [
	^'(PackageInfo named: *'
]

{ #category : 'actions' }
MCScriptParser >> addDefinitionsTo: aCollection [

	| tokens definition |
	tokens := OCParser parseLiterals: source.
	definition := MCScriptDefinition
		              scriptSelector: tokens second allButLast
		              script: tokens third
		              packageName: tokens first third.
	aCollection add: definition
]
