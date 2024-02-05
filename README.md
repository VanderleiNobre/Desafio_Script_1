Modulo Linux
Desafio 01: Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões

PASSO A PASSO:

Excluir diretórios, arquivos, grupos e usuários criados anteriormente no curso; ✅
Todo provisionamento deve ser feito em um arquivo do tipo Bash Script; ✅
O dono de todos os diretórios criados será o usuário root; ✅
Todos os usuários terão permissão total dentro do diretório publico; ✅
Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório; ✅
Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem. ✅
Comentários:

Além do passo a passo pedido no desafio, adicionei códigos para a expiração da senha padrão criada para cada usuário, para que alterem a senha em seu primeiro acesso.
Adicionei um simples comentário na criação do usuário identificando a qual setor pertence.

obs.:
Adicionando permissão de execução
$ chmod +x script_user.sh
