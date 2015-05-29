set lines=50 columns=150
color xcode-dusk

if has("win32")
	set guifont=Consolas:h10
elseif has("mac")
    set guifont=Monaco:h11
else
	set guifont=DejaVu\ Sans\ Mono\ 10,Monospace\ 10
endif
