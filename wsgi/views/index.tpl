<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <title>tree_tops_2 template</title>
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="static/style/style.css" />
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <h1>Temperaturas <span class="alternate_colour">Sevilla</span></h1>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="tab_selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="tab_selected"><a href="index.html">Home</a></li>
          <li><a href="our_services.html">Our Services</a></li>
          <li><a href="about_us.html">About Us</a></li>
          <li><a href="styles.html">Styles</a></li>
          <li><a href="contact.html">Contact Us</a></li>
        </ul>
      </div>
    </div>
    <div id="site_content">
      <div id="panel"><img src="static/style/panel.jpg" alt="tree tops" /></div>
      <div class="sidebar">
        <!-- insert your sidebar items here -->
        <h1>Latest News</h1>
        <h2>New Website Launched</h2>
        <h3>January 1st, 2011</h3>
        <p>2010 sees the redesign of our website. Take a look around and let us know what you think.<br /><a href="#">Read more</a></p>
        <h1>Useful Links</h1>
        <ul>
          <li><a href="#">link 1</a></li>
          <li><a href="#">link 2</a></li>
          <li><a href="#">link 3</a></li>
          <li><a href="#">link 4</a></li>
        </ul>
        <h1>Useful Info</h1>
        <p>You can put anything you like in the sidebar. Latest news, useful links, images, contact information. Anything you think the visitor will find useful.</p>
      </div>
      <div id="content">
        <!-- insert the page content here -->
        <h1>Municipios de Sevilla</h1>

	<ul>
	% for m in mun:
		<li><a href="/{{m.attrib["value"][-5:]}}/{{m.text}}">{{m.text}}</a></li>
	%end
	</ul>
	</div>
    </div>
    <div id="footer">Copyright &copy; Company Name. All Rights Reserved. | <a href="http://validator.w3.org/check?uri=referer">XHTML</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | <a href="http://www.dcarter.co.uk">design by dcarter</a></div>
  </div>
<div style="text-align: center; font-size: 0.75em;">Diseño descargado desde <a href="http://www.misplantillas.com/">plantillas web gratis</a>.</div></body>
</html>