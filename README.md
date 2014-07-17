## jQuery Slick Carousel

This is an experimental R package that provides the [jquery Slick Carousel](http://kenwheeler.github.io/slick/) as a HTML widget.

### Installation

You can install it from `github`.

```r
library(devtools)
install_github('rstudio/htmltools')
install_github('ramnathv/htmlwidgets')
install_github('ramnathv/slickCarousel')
```

### Usage

Let us first load the required libaries.

```r
library(htmltools)
library(htmlwidgets)
library(slickCarousel)
```

We can now create a simple image carousel.

```r
images = sprintf('http://kenwheeler.github.io/slick/img/fonz%s.png', 1:3)
img_div <- lapply(images, function(src){
  tags$div(class = 'image', tags$img(src = src))
})
slickCarousel(content = img_div, height = 350, config = list(dots = TRUE))
```

![slickCarousel](http://i.imgur.com/CJAD6FJ.png)


We can plug this into an R Markdown document and embed it without really having to change anything else. You can see the output [here](http://rpubs.com/ramnathv/test-carousel)


	---
	title: "Slick Carousel HTML Widget"
	author: "Ramnath Vaidyanathan"
	date: "July 17, 2014"
	output: html_document
	---

	This is a short demo of the [slickCarousel](http://github.com/ramnathv/slickCarousel) package, which provides a HTML widget to create carousels.

	Let us first load the required libaries.

	```{r}
	library(htmltools)
	library(htmlwidgets)
	library(slickCarousel)
	```

	We can now create a simple image carousel.

	```{r results = 'asis', comment = NA, out.width = 450, out.height = 350}
	images = sprintf('http://kenwheeler.github.io/slick/img/fonz%s.png', 1:3)
	img_div <- lapply(images, function(src){
	  tags$div(class = 'image', tags$img(src = src))
	})
	slickCarousel(content = img_div, config = list(dots = TRUE))
	```
  




