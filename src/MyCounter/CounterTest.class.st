Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [

  | c |
c := Counter new.
c count: 5.
self assert: c count equals: 5.
c count: 0.
self assert: c count equals: 0
]
