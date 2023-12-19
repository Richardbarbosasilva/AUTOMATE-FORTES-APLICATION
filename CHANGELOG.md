# Registro de Alterações
## [1.0.0] - 01/12/2023
### Adicionado
-Os scripts de Automação Fortes (AC, AG, PONTO) agora estão funcionais, implementados para todos os usuários do domínio.
## [1.0.1] - 13/12/2023
### Adicionado
-Os scripts agora são não interativos, sendo executados automaticamente após a inicialização do PC por meio da funcionalidade de script de logon do GPO. Também se encerram automaticamente após a execução da automação.
## [1.0.2] - 15/12/2023
### Adicionado
-Os scripts se autoexecutam em modo minimizado, sem exibir janelas na área de trabalho do usuário.
-O tempo de execução do script foi reduzido em mais da metade (geralmente menos de 6 segundos).
## [1.1] - 19/12/2023
### Adicionado
-Os scripts AC, AG, PONTO estão agora integrados em apenas um script que executa todas as três automações de uma vez.
-O tempo de execução do script agora dura 50% a mais do que a versão anterior (geralmente 9 segundos).
-Agora, a automação é executada apenas se o usuário tiver a pasta Fortes; se ele não tiver, ou tiver apenas uma ou duas das três fortes, a automação é executada apenas nessas pastas.
