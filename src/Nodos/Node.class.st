Class {
	#name : #Node,
	#superclass : #Object,
	#instVars : [
		'data',
		'next'
	],
	#category : #Nodos
}

{ #category : #accessing }
Node >> data [
	^ data
]

{ #category : #accessing }
Node >> data: anObject [
	data := anObject
]

{ #category : #accessing }
Node >> next [
	^ next
]

{ #category : #accessing }
Node >> next: aNode [
	next := aNode
]
