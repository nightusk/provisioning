all: init.el init.elc

%.el: %.org
	emacs --batch \
		--load ob-tangle \
		--eval "(org-babel-tangle-file \"$<\")"

%.elc: %.el
	emacs --batch --load init.el --funcall batch-byte-compile $<

.PHONY: all
