Class {
	#name : #Pila,
	#superclass : #Object,
	#instVars : [
		'header'
	],
	#category : #Nodos
}

{ #category : #testing }
Pila >> isEmpty [
	^header isNil.
]

{ #category : #removing }
Pila >> pop [
	|res|
	res:= self top.
	header:= header next.
	^res.
]

{ #category : #adding }
Pila >> push: anObject [ 
	|newNode |
	newNode:= Node new. 
	newNode data: anObject.
	newNode next: header.
	header:= newNode.
]

{ #category : #accessing }
Pila >> top [
	^header data.
	
]
