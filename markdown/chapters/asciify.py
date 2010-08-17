import markdown 

f = open("character-animation.md")

for line in f:
    print unicode(line)

text = markdown.markdown(f.read())

# text = f.read()

# text = text.replace('<note>', '<div class="note">')
# text = text.replace('<note tip>', '<div class="note tip">')
# text = text.replace('</note>', '</div>')

# text = text.replace('//', '')
# text = text.replace('', '\'')

# {{:labs:frog_(.*)\.jpg}}
# ![Maya Image](/images/frog/frog_$1.jpg)
