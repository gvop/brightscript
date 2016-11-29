sub init()
  m.top.backgroundURI = "pkg:/images/rsgde_bg_hd.jpg"

  m.top.setFocus(true)

  m.postergrid = m.top.findNode("examplePosterGrid")

  m.postergrid.translation = [ 200, 200 ]

  m.readPosterGridTask = createObject("roSGNode", "ContentReader")
  m.readPosterGridTask.contenturi = "http://www.sdktestinglab.com/Tutorial/content/rendergridps.xml"
  m.readPosterGridTask.observeField("content", "showpostergrid")
  m.readPosterGridTask.control = "RUN"
end sub

sub showpostergrid()
  m.postergrid.content = m.readPosterGridTask.content
end sub
