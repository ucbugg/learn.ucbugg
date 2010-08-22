import markdown 
import sys

f = open(sys.argv[1])

for line in f:
    for c in line:
        print unicode(c),
    print 

text = markdown.markdown(f.read())

# text = f.read()

# text = text.replace('<note>', '<div class="note">')
# text = text.replace('<note tip>', '<div class="note tip">')
# text = text.replace('</note>', '</div>')

# text = text.replace('//', '')
# text = text.replace('', '\'')

# {{:labs:frog_(.*)\.jpg}}
# ![Maya Image](/images/frog/frog_$1.jpg)
