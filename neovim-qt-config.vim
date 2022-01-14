" Disable GUI Tabline
if exists(':GuiTabline')
	GuiTabline 0
endif

" Fix ugly popup menu
if exists('g:GuiLoaded')
	call rpcnotify(0, "Gui", "Option", "Popupmenu", 0)
endif

"Disable GUI Popupmenu
if exists(':GuiPopupmenu')
	GuiPopupmenu 0
endif

" Disable Gui ScrollBar
if exists(':GuiScrollBar')
	GuiScrollBar 0
endif

" Specify the font
if exists('g:GuiFont')
	GuiFont! FiraCode NF:h11
endif
