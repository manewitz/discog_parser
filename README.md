This is a small program I built to parse XML feeds returned from [discog.com](http://www.discog.com). You enter an artist, submit the query, and an XML file is returned. It is parsed with [nokogiri](http://nokogiri.org/), pulling the info into a new array of `Release`  objects, and `puts`'ed to the console. 

---

#TODO#
1.  delete Release objects with duplicate titles
2.  add web interface (might be a good fit for [Sinatra](http://www.sinatrarb.com/))
3.  pull artwork from [somewhere](http://explodingpixels.wordpress.com/2008/06/24/getting-album-art-using-amazon-web-services/)
4.  [profit?](http://robbreport.com/)

Cheers!

Mike Manewitz

[mike.manewitz@gmail.com](mailto:mike.manewitz@gmail.com?subject="You%20are%20awesome")

github: [manewitz](http://www.github.com/manewitz)