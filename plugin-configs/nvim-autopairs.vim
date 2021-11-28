" Mapping config only: for behaviour check nvim-cmp.vim

" Toggling function
let g:ToggleAutoPair = 1
lua require('nvim-autopairs').enable()

" TODO: Error 488: Trailing characters for some reason
function ToggleAutoPair()
	if g:ToggleAutoPair
		echo "AutoPair Enabled!"
		lua require('nvim-autopairs').enable()
		let g:ToggleAutoPair = 0
	else
		echo "AutoPair Disabled!"
		lua require('nvim-autopairs').disable()
		let g:ToggleAutoPair = 1
	endif
endfunction

" Toggle AutoPair behaviour - mnemonic: Toggle + Pair
command! -nargs=0 TP call ToggleAutoPair()<CR>
