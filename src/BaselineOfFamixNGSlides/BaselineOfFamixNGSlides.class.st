Class {
	#name : #BaselineOfFamixNGSlides,
	#superclass : #BaselineOf,
	#category : #BaselineOfFamixNGSlides
}

{ #category : #baselines }
BaselineOfFamixNGSlides >> baseline: spec [
	<baseline>
	spec
    for: #common
    do: [
      "Packages"
      spec
        package: 'FamixNG-Slides-Tests';
        package: 'FamixNG-Slides-Generator'.
		spec group: 'Tutorial' with: #('FamixNG-Slides-Tests').
		spec group: 'Solution' with: #('FamixNG-Slides-Tests' 'FamixNG-Slides-Generator') ]
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
