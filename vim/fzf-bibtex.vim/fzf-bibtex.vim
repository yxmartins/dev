" vim plugin improving fzf-bibtex compatibility with vim.
" easy configuration
" added quickly multicitations feature

    function! Bibtex_ls()
        let bibfiles = (
            \ globpath('.', '*.bib', v:true, v:true) +
            \ globpath('..', '*.bib', v:true, v:true) +
            \ globpath('*/', '*.bib', v:true, v:true)
            \ )
        let bibfiles = join(bibfiles, ' ')
        let source_cmd = 'bibtex-ls '.bibfiles
        return source_cmd
    endfunction
">> '@@' to introduce a single citation in latex files
    function! s:bibtex_latex_sink(lines)
        let r=system("bibtex-cite -mode=latex", a:lines)
        execute ':normal! a'.r
    endfunction
    autocmd filetype tex inoremap <silent> @@ <c-g>u<c-o>:call fzf#run({
                        \ 'source': Bibtex_ls(),
                        \ 'sink*': function('<sid>bibtex_latex_sink'),
                        \ 'up': '50%',
                        \ 'options': '--ansi --layout=reverse-list --multi'})<cr>
    autocmd filetype tex nnoremap <silent> @@ :call fzf#run({
                        \ 'source': Bibtex_ls(),
                        \ 'sink*': function('<sid>bibtex_latex_sink'),
                        \ 'up': '50%',
                        \ 'options': '--ansi --layout=reverse-list --multi'})<cr>
">> '@@' to introduce single markdown-style citation in markdown files
    function! s:bibtex_markdown_sink(lines)
        let r=system("bibtex-markdown ", a:lines)
        execute ':normal! a' . r
    endfunction
    autocmd filetype md,markdown inoremap <silent> @@ <c-g>u<c-o>:call fzf#run({
                        \ 'source': 'bibtex-ls',
                        \ 'sink*': function('<sid>bibtex_cite_sink'),
                        \ 'up': '50%',
                        \ 'options': '--ansi --layout=reverse-list --multi'})<cr>

    autocmd filetype md,markdown nnoremap <silent> @@ :call fzf#run({
                        \ 'source': 'bibtex-ls',
                        \ 'sink*': function('<sid>bibtex_cite_sink'),
                        \ 'up': '50%',
                        \ 'options': '--ansi --layout=reverse-list --multi'})<cr> 
">> '@{', '@,' and '@}' to introduce multiple citations in latex
    function! s:bibtex_latex_prefix_sink(lines)
        let r=system("bibtex-cite -prefix='\\cite{' -postfix=',' -separator='' ", a:lines)
        execute ':normal! a' . r
    endfunction
    function! s:bibtex_latex_separator_sink(lines)
        let r=system("bibtex-cite -prefix='' -postfix=',' -separator='' ", a:lines)
        execute ':normal! a' . r
    endfunction
    function! s:bibtex_latex_postfix_sink(lines)
        let r=system("bibtex-cite -prefix='' -postfix='}' -separator='' ", a:lines)
        execute ':normal! a' . r
    endfunction
    autocmd filetype tex inoremap <silent> @{ <c-g>u<c-o>:call fzf#run({
                        \ 'source': Bibtex_ls(),
                        \ 'sink*': function('<sid>bibtex_latex_prefix_sink'),
                        \ 'up': '50%',
                        \ 'options': '--ansi --layout=reverse-list --multi'})<cr>
    autocmd filetype tex inoremap <silent> @, <c-g>u<c-o>:call fzf#run({
                        \ 'source': Bibtex_ls(),
                        \ 'sink*': function('<sid>bibtex_latex_separator_sink'),
                        \ 'up': '50%',
                        \ 'options': '--ansi --layout=reverse-list --multi'})<cr>
    autocmd filetype tex inoremap <silent> @} <c-g>u<c-o>:call fzf#run({
                        \ 'source': Bibtex_ls(),
                        \ 'sink*': function('<sid>bibtex_latex_postfix_sink'),
                        \ 'up': '50%',
                        \ 'options': '--ansi --layout=reverse-list --multi'})<cr>
    autocmd filetype tex nnoremap <silent> @{ :call fzf#run({
                        \ 'source': Bibtex_ls(),
                        \ 'sink*': function('<sid>bibtex_latex_prefix_sink'),
                        \ 'up': '50%',
                        \ 'options': '--ansi --layout=reverse-list --multi'})<cr>
    autocmd filetype tex nnoremap <silent> @, :call fzf#run({
                        \ 'source': Bibtex_ls(),
                        \ 'sink*': function('<sid>bibtex_latex_separator_sink'),
                        \ 'up': '50%',
                        \ 'options': '--ansi --layout=reverse-list --multi'})<cr>
    autocmd filetype tex nnoremap <silent> @} :call fzf#run({
                        \ 'source': Bibtex_ls(),
                        \ 'sink*': function('<sid>bibtex_latex_postfix_sink'),
                        \ 'up': '50%',
                        \ 'options': '--ansi --layout=reverse-list --multi'})<cr>

