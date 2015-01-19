from bottle import route, default_app, template
from lxml import etree
@route('/')
def index():
    doc=etree.parse(os.environ['OPENSHIFT_REPO_DIR']+"wsgi/static/sevilla.xml")
    muni=doc.findall("municipio")
    return template("index.tpl", mun=muni)
@route('/<cod>/<name>')
def temp(cod,name):
	doc=etree.parse("http://www.aemet.es/xml/municipios/localidad_"+cod+".xml")
	p=doc.find("prediccion/dia")
	max=p.find("temperatura").find("maxima").text
	min=p.find("temperatura").find("minima").text
	return template("temp.tpl",name=name,max=max,min=min)

@route('static/<filename>')
@route('static/style/<filename>')
def server_static(filename):
    return static_file(filename, root=os.environ['OPENSHIFT_REPO_DIR']+"wsgi/static")
# This must be added in order to do correct path lookups for the views
import os
from bottle import TEMPLATE_PATH
TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_REPO_DIR'], 'wsgi/views/')) 

application=default_app()
