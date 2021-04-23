Class {
	#name : #TreeVisitor,
	#superclass : #Object,
	#instVars : [
		'result'
	],
	#category : #Nodos
}

{ #category : #accessing }
TreeVisitor >> result [
	^result. 
]

{ #category : #visiting }
TreeVisitor >> visitTree: aTree [
	self subclassResponsibility.
	
]
