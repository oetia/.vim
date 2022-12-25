function! Composed()
    let visual_selection = GetVisualSelection()
    " echo "python3 test.py" . visual_selection
    let output = system("python3 ~/.vim/test.py " . visual_selection)
    " echo output
    call TranslationPopup(visual_selection, output)

endfunction

function! TranslationPopup(text, translation)
    " echo a:text
    call popup_create([a:text, a:translation], #{pos: 'botleft',line: 'cursor-1',col: 'cursor',minheight:3, minwidth:10, moved: 'WORD', border: [], padding: [0,1,0,1]})
endfunction 

" call Test()

" nmap \ :Test()<CR>

" https://stackoverflow.com/a/6271254
function! GetVisualSelection()
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)
    if len(lines) == 0
        return ''
    endif
    let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]
    return join(lines, "\n")
endfunction

function! CumLoli()
    let output = system("python3 test.py " . )
endfunction
