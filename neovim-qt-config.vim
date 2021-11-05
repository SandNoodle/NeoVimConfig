" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Fix ugly popup menu
if exists('g:GuiLoaded')
	call rpcnotify(0, "Gui", "Option", "Popupmenu", 0)
endif
