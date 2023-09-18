# instalar o TMUX e ferramentas de apoio
1) cd
2) git clone https://github.com/gpakosz/.tmux.git
3) ln -s -f .tmux/.tmux.conf
4) cp .tmux/.tmux.conf.local .
5) abrir tmux: tmux
6) Dentro do tmux, rodar C-A + e
7) descomentar as linhas e comentar as de mesmo nome com outro valor:
    tmux_conf_theme_left_separator_main='\uE0B0'
    tmux_conf_theme_left_separator_sub='\uE0B1'
    tmux_conf_theme_right_separator_main='\uE0B2'
    tmux_conf_theme_right_separator_sub='\uE0B3'
6) Sair de todos os terminas e sessoes de tmux e reabrir 

# Instalar a powerline
1) git clone https://github.com/powerline/fonts.git
2) cd fonts
3) ./install.sh

# Habilitar powerline no temrinal
1) Abrir o terminal e clicar com o botao direito
2) preferences/Test/Custom fonts: Source Code Pro for Powerline
3) Sair de todos os terminas e reabrir 
