Class {
	#name : #Gt4MesoCycleLogger,
	#superclass : #Object,
	#instVars : [
		'cycle'
	],
	#category : #'Gt4Workouts-Model'
}

{ #category : #accessing }
Gt4MesoCycleLogger >> cycle [
	^ cycle
]

{ #category : #accessing }
Gt4MesoCycleLogger >> cycle: anObject [
	cycle := anObject
]

{ #category : #'as yet unclassified' }
Gt4MesoCycleLogger >> logInWeek: aWeekNumber onDay: aDayNumber onExercise: anExerciseNumber result: aValue [
	self cycle results
		inWeek: aWeekNumber
		onDay: aDayNumber
		onExercise: anExerciseNumber
		add: aValue
]
