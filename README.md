# About

This package is syntax definition of JSM file.

# What is JSM

JSM is HTML template system that is designed by Toshiaki Nakatsu. 
This template is used at MARS FLAG products. 
We can create HTML file using JavaScript syntax.

## Sample

	## comment area that stats with double "#"

	## JavaScript code area that starts with single "#""
	# var url='http://github.com/g-yanagi/vim-jsm/'; 
	
	## Plain text. JavaScript variables surrounded by "${" and "}" is evaluated.
	<a href="${url}"> vim-jsm repogitory </a> 

# Quick Start

You can use this plugin using Vim package manager `NeoBundle`.

Write the following line in .vimrc

	NeoBundle 'g-yanagi/vim-jsm'
	
And Execute `NeoBundleInstall` on Vim command line.

	:NeoBundleInstall


