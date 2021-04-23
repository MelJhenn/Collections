"
A PilaTest is a test class for testing the behavior of Pila
"
Class {
	#name : #PilaTest,
	#superclass : #TestCase,
	#category : #'Nodos-Tests'
}

{ #category : #tests }
PilaTest >> testBasic [ 
	|p1|
	p1 := Pila new. 
	self assert: p1 isEmpty.
	p1 push: 'La Ley'. 
	self assert: p1 top equals: 'La Ley'.
	self deny: p1 isEmpty.
	p1 pop.
	self assert: p1 isEmpty.
	p1 push: 'Los Kjarkas'.
	p1 push: 'Slipknot'.
	p1 push: 'BTS'.
	self assert: p1 pop equals: 'BTS'.
	self assert: p1 pop equals: 'Slipknot'.
	self assert: p1 pop equals: 'Los Kjarkas'.
	self should: [p1 pop] raise: Error.
	self should: [ p1 top ] raise: Error.
	self assert: p1 isEmpty.
	
		
]
