
if exists("g:loaded_sack_shortcuts") || &cp
    finish
endif
let g:loaded_sack_shortcuts = 1

if !has('python')
    echo "Error: Required vim compiled with +python"
    finish
endif

if !exists("g:sack_shortcuts_file")
    let g:sack_shortcuts_file = "~/.sack_shortcuts"
endif

function! s:sack_open(cmd, n)
python << EOF
try:
    import vim
    import os

    shortcut_file = vim.eval("g:sack_shortcuts_file")
    n = int(vim.eval("a:n"))
    cmd = vim.eval("a:cmd")

    shortcuts = file(os.path.expanduser(shortcut_file)).readlines()
    if 0 < n and n <= len(shortcuts):
        line, fname = shortcuts[n-1].split(' ', 1)
        vim.command('{} {}'.format(cmd, fname))
        vim.command(':{}'.format(line))
    else:
        print 'no shortcut {} found'.format(n)
except Exception, e:
    print e
EOF
endfunction

command! -nargs=1 F call s:sack_open("edit", <args>)
command! -nargs=1 Ftab call s:sack_open("tabnew", <args>)
command! -nargs=1 Fsplit call s:sack_open("new", <args>)
command! -nargs=1 Fvsplit call s:sack_open("vnew", <args>)
