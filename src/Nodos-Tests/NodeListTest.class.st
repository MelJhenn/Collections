"
A NodeListTest is a test class for testing the behavior of NodeList
"
Class {
	#name : #NodeListTest,
	#superclass : #TestCase,
	#category : #'Nodos-Tests'
}

{ #category : #tests }
NodeListTest >> testBasic [ 
	|list|
	list:= NodeList  new.
	list add: 20.
	list add: 50.
	list add: 70.
	list add: 90.
	list add: 100.
	self assert: list size equals: 5.
	self assert: (list includes: 70).
	self deny: (list includes: 80).
]
