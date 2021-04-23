Class {
	#name : #Tree,
	#superclass : #Object,
	#instVars : [
		'left',
		'data',
		'right'
	],
	#category : #Nodos
}

{ #category : #visitor }
Tree >> accept: anInOrdenVisitor [ 
	anInOrdenVisitor visitTree: self.
]

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
