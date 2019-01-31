Class {
	#name : #BaselineOfFamixNGSlides,
	#superclass : #BaselineOf,
	#category : #BaselineOfFamixNGSlides
}

{ #category : #'as yet unclassified' }
BaselineOfFamixNGSlides >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			self defineDependencies: spec.
			self definePackages: spec.
			self defineGroups: spec ]
]

{ #category : #'as yet unclassified' }
BaselineOfFamixNGSlides >> defineDependencies: spec [

]

{ #category : #'as yet unclassified' }
BaselineOfFamixNGSlides >> defineGroups: spec [
	spec
		group: 'default' with: #('FamixNG-Slides-Generator' 'FamixNG-Slides-Tests')
]

{ #category : #'as yet unclassified' }
BaselineOfFamixNGSlides >> definePackages: spec [
	spec
		repository: 'https://github.com/juliendelplanque/FamixNG-Slides';
		package: 'FamixNG-Slides-Generator';
		package: 'FamixNG-Slides-Tests'
]
