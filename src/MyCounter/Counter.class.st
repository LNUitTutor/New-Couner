"
`Counter` is a simple concrete class which supports incrementing and decrementing.
Its API is
- `decrement` and `increment`
- `count`
Its creation message is `startAt:`

"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startAt: initalInteger [
 ^self new count: initalInteger 
]

{ #category : #accessing }
Counter >> count [
  ^ count
]

{ #category : #accessing }
Counter >> count: anInteger [
  count := anInteger 
]

{ #category : #actions }
Counter >> decrement [
	count := count - 1.
]

{ #category : #actions }
Counter >> increment [
	count := count + 1
]

{ #category : #printing }
Counter >> printOn: aStream [

super printOn: aStream .
aStream nextPutAll: ' with value '.
count printOn: aStream 
]
