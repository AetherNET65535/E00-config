export PS1='%n@%~: >'
export MOZ_DISABLE_VP9=1
export PATH=$HOME/bin:$PATH

alias reload='source ~/.zshrc'

alias nvimdoc='nvim /home/aethernet/Documents/65535'
alias xv6='nvim /home/aethernet/Documents/65535/workspace/L00-XV6'
alias update='paru -Syu'
alias fmt='clang-format -style=file -i'
alias superfmt="find . -regex '.*\.\(cpp\|hpp\|c\|h\|cu\)' -type f -print0 | xargs -0 -P $(nproc) -n 10 clang-format -style=file -i && echo '代码美容完成！(๑¯◡¯๑)'"
alias toxv6='cd Documents/65535/workspace/L00-XV6/'
alias sudonvim='sudo -E nvim'
#neofetch

export LUA_VERSION=5.1
export PATH="$HOME/.luarocks/bin:$PATH"
export PATH="$HOME/.luarocks/bin:$PATH"
export LUA_PATH="$HOME/.luarocks/share/lua/5.1/?.lua;$HOME/.luarocks/share/lua/5.1/?/init.lua;$LUA_PATH"
export LUA_CPATH="$HOME/.luarocks/lib/lua/5.1/?.so;$LUA_CPATH"
