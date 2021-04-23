Class {
	#name : #Tree,
	#superclass : #Object,
	#instVars : [
		'data',
		'left',
		'right'
	],
	#category : #Nodos
}

{ #category : #accessing }
Tree >> data [
	^ data
]

{ #category : #accessing }
Tree >> data: anObject [
	data := anObject
]

{ #category : #accessing }
Tree >> left [
	^ left
]

{ #category : #accessing }
Tree >> left: anObject [
	left := anObject
]

{ #category : #accessing }
Tree >> right [
	^ right
]

{ #category : #accessing }
Tree >> right: anObject [
	right := anObject
]
