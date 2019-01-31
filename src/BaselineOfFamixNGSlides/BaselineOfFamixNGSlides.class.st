Class {
	#name : #BaselineOfFamixNGSlides,
	#superclass : #BaselineOf,
	#category : #BaselineOfFamixNGSlides
}

{ #category : #baseline }
BaselineOfFamixNGSlides >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			self defineDependencies: spec.
			self definePackages: spec.
			self defineGroups: spec ]
]

{ #category : #baseline }
BaselineOfFamixNGSlides >> defineDependencies: spec [

]

{ #category : #baseline }
BaselineOfFamixNGSlides >> defineGroups: spec [
	spec
		group: 'default' with: #('FamixNG-Slides-Generator' 'FamixNG-Slides-Tests');
		group: 'binding' with: #('default' 'FamixNG-SlidesSmalltalk-Generator')
]

{ #category : #baseline }
BaselineOfFamixNGSlides >> definePackages: spec [
	spec
		repository: 'https://github.com/juliendelplanque/FamixNG-Slides';
		package: 'FamixNG-Slides-Generator';
		package: 'FamixNG-Slides-Tests';
		package: 'FamixNG-SlidesSmalltalk-Generator'
]
