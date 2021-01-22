PANDOC := $(patsubst %.md,%.pandoc,$(wildcard *.md))
HANDOUTS := $(patsubst %.md,%.md.handout.pdf,$(wildcard *.md))

all : $(PANDOC) $(HANDOUTS)

%.pandoc : %.md
	perl -pe 's/^-{3,4}$$//g; s/\\\[/\[/g; s/\\\]/\]/g; s/\\\\/\\/g; s/## AE737//g; s/\\_/_/g; s/<br\/>/\n\n/g; s/`\$$\$$/\\\\\[/g; s/\$$\$$`/\\\\\]/g; s/`\$$(.*?)\$$`/\\\\\(\1\\\\\)/g; s/\$$/\\\$$/g; s/(?<!\\)\\$$/\\\\/g; /^# /d' $^ > $@


%.pdf : %.pandoc
	pandoc -f markdown+tex_math_double_backslash+pipe_tables style.yaml $^ -t beamer -o $@

%.tex : %.pandoc
	pandoc -f markdown+tex_math_double_backslash+pipe_tables style.yaml $^ -t beamer -s -o $@ 
		

clobber : 
	rm -f $(PANDOC)
	rm -f $(HANDOUTS)
