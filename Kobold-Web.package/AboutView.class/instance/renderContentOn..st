rendering
renderContentOn: html
	html
		tbsPanel: [ html heading level3 with: 'About this tool'.
			html
				paragraph:
					'The Usability Smells Finder is a prototype intended to support research on Web Usability critique automation carried out at LIFIA (UNLP, Argentina).';
				paragraph: 'Find the research paper at:'.
			html
				unorderedList: [ html
						listItem: [ html anchor
								url: 'http://www.sciencedirect.com/science/article/pii/S1071581916301215';
								with: 'ScienceDirect' ] ;
						listItem: [ html anchor
								url: 'https://www.researchgate.net/publication/308343984_Automatic_Detection_of_Usability_Smells_in_Web_Applications';
								with: 'ResearchGate' ] ] ]