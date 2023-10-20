if ! exists("g:CheckUpdateStarted")
    let g:CheckUpdateStarted=1
    call timer_start(1,'CheckUpdate')
endif
function! CheckUpdate(timer)
    silent! checktime
    silent! NvimTreeRefresh
    call timer_start(250,'CheckUpdate')
endfunction

set ttimeoutlen=0
