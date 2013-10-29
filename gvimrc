set lines=40 columns=120

if has("win32")
	set guifont=Consolas:h11
elseif has("mac")
    set lines=50 columns=150
    set guifont=Monaco:h11
    color xcode-dusk
else
	set guifont=Monospace\ 11
endif
