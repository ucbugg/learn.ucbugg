from google.appengine.ext import db, webapp
from google.appengine.ext.webapp import template
from google.appengine.api import memcache

import logging
import os
import settings
import sys
import wsgiref.handlers

# Update the system path
sys.path.insert(0, settings.APP_ROOT_DIR)
sys.path.insert(1, os.path.join(settings.APP_ROOT_DIR, 'utils'))

import markdown

def render(filename, values):
    
    # Add values to every page
    values["version"] = settings.VERSION.replace(".", "")

    path = os.path.join(settings.TEMPLATE_DIR, filename)
    return template.render(path, values)

CHAPTERS = [
    "Introduction to Maya",
    "Basic Modeling",
    "Organic Modeling",
    "Basic Rigging",
    "Basic Animation",
    "Character Animation",
    "Shading",
    "Lighting",
    "Advanced Shading",
]

TUTORIALS = [
    "",
]

def slugify(string):
    return string.lower().replace(" ", "-")

def deslugify(string):
    return string.replace("-", " ").title().replace("To", "to")

def base_template():
    
    return {
        "version": settings.VERSION,
        }


class IndexPage(webapp.RequestHandler):
    
    def get(self):
        toc = []
        
        for chapter in CHAPTERS:
            toc.append({
                    "title": chapter,
                    "link" : "/" + slugify(chapter),
                    })

        template_values = {
            "chapters": toc,
            }

        
        self.response.out.write(render("index.html", template_values))

class Chapter(webapp.RequestHandler):

    def get(self, path):
        #html = memcache.get(path, namespace=settings.VERSION)
        html = None
        if html is not None:
            self.response.out.write(html)
        else:
            filename = os.path.join(settings.CHAPTERS_DIR, path + ".md")
            if os.path.exists(filename):
                f = open(filename)

                template_values = {
                    # Make sure headers have ids
                    "markdown": markdown.markdown(f.read(), ['headerid(forceid=True)', 'tables']),
                    "section_id": "chapter",
                    "page": {
                        "title": deslugify(path),
                        "link": "/" + path,
                        },
                    }

                html = render("tutorial.html", template_values)
                if not memcache.add(path, html, namespace=settings.VERSION):
                    logging.error("Memcache Add failed")
                self.response.out.write(html)
            else:
                self.error(404)
                self.response.out.write(render("404.html",{}))

class Tutorial(webapp.RequestHandler):
    
    def get(self, path):
        template_values = {
            "markdown": "text"
            }
        self.response.out.write(render("template.html", template_values))

ROUTES = [
    (r'/', IndexPage),
    (r'/(.*)', Chapter),
    (r'/tutorials/(.*)', Tutorial),
]

def main():
    wsgiref.handlers.CGIHandler().run(webapp.WSGIApplication(ROUTES))

if __name__ == '__main__':
    main()
