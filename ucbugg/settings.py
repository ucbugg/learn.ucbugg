import os

#Stashboard version
VERSION = "0.1.4"

# Add utils and templates to the system path
APP_ROOT_DIR = os.path.abspath(os.path.dirname(__file__))
TEMPLATE_DIR = os.path.join(APP_ROOT_DIR, "templates")
MARKDOWN_DIR = os.path.join(APP_ROOT_DIR, "markdown")
CHAPTERS_DIR = os.path.join(MARKDOWN_DIR, "chapters")
TUTORIAL_DIR = os.path.join(MARKDOWN_DIR, "tutorials")