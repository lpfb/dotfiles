# introdução
Procedimento necessário para instalar e usar a ferramenta starship, mais detalhes podem ser encontrados em [Link](https://starship.rs/).

# Instalação
Para instalar, basta rodar o comando abaixo em qualquer lugar
```sh
curl -sS https://starship.rs/install.sh | sh
```

# Personalizando as configurações
Após a instalação é possível configurar o prompt do starship. Para tal, execute os passos abaixo:

1. Copie o arquivo starship.toml contido aqui  para a pasta do PC
	```sh
	cp starship.toml ~/.config/
	```
1. Modifique bashrc adicionando a linha abaixo no fim do arquivo
	```sh
	eval "$(starship init bash)"
	```
