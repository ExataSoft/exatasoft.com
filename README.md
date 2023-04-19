"Como copiar pastas e arquivos ignorando todos os arquivos de uma determinada extensão no Windows 10?"
Você pode usar os seguintes comandos no prompt do windows:

Tem um script pronto para baixar, no final desta "resposta" …

(i) Ignorando apenas uma extensão:

echo .ext1 > arq.txt & xcopy /E/C/Q/Y/I /EXCLUDE:arq.txt "origem" "destino"

(ii) Ignorando mais de uma extensão:

(echo .ext1 & echo .ext2 ) > arq.txt & xcopy /E/C/Q/Y/I /EXCLUDE:arq.txt "origem" "destino"

Você apenas terá que alterar as partes em negrito acima.

Onde:

Origem é pasta onde estão os arquivos de origem, os que serão copiados.

Destino é pasta para onde serão copiados . (Esta pasta ou caminho deve existir!)

ext1 e ext2 são os tipos de extensão a serem ignorados.

A opção /E serve para copiar todas as subpastas da pasta de origem.

———————————————————————

Exemplos de como usar os comandos acima:

Exemplo1: (ignorando apenas uma extensão)

No windows(7/8.x/10),

Tecle: "Botão Iniciar" + "R"

Na caixa de texto, digite cmd

Tecle: ENTER

Copie e cole na tela que abrir o seguinte comando:

echo .txt > arq.txt & xcopy /E/C/Q/Y/I /EXCLUDE:arq.txt  "%USERPROFILE%\Downloads"  "%USERPROFILE%\Documentos" 
O comando acima irá copiar todo o conteúdo da sua pasta de downloads, ignorando os arquivos com extensão ".txt" (de texto), para sua pasta de documentos do windows.

Obs: %USERPROFILE% é o caminho padrão da sua pasta de "usuário" do windows.

Mas, você pode usar a pasta que desejar:

echo .jpg > arq.txt & xcopy /E/C/Q/Y/I /EXCLUDE:arq.txt  "C:\PastaA"  "C:/PastaB"  
 
Neste caso: temos .jpg como a extensão a ser ignorada, 
            a pasta de origem sendo a PastaA  
            e a de destino sendo a PastaB 
Ignorando mais de uma extensão:

Exemplo2: (ignorando duas extensões)

(echo .txt & echo .jpg) > arq.txt & xcopy /E/C/Q/Y/I /EXCLUDE:arq.txt  "%USERPROFILE%\Downloads"  "%USERPROFILE%\Documentos" 
Exemplo3: (ignorando três extensões)

(echo .txt & echo .jpg & echo .bmp) > arq.txt & xcopy /E/C/Q/Y/I /EXCLUDE:arq.txt  "%USERPROFILE%\Downloads"  "%USERPROFILE%\Documentos" 
Obs: Quando for apenas testar os comandos recomendo retirar a opção /E . A opção /E serve para copiar todas as subpastas e isso pode demorar bastante dependendo do tamanho do conteúdo da sua pasta de downloads. Quando for "para valer" deixe esta opção indicada.

Se precisar parar a execução do comando, tecle CRTL + C

Para um uso constante crie um arquivo de lote (.bat), copie e cole o comando nele, alterando conforme as suas necessidades. Exemplo: crie um arquivo chamado copiar.bat copie o comando, altere como desejar e salve em uma pasta. Aí só clicar pelo windows (não precisa entrar no cmd).

Resolvi criar este escript, roda no cmd (prompt do windows):

Baixe aqui: https://exatasoft.com/files/copiar.bat (se tiver problemas em baixar pelo github)

Ou, se preferir, copie e cole no "bloco de notas" o script baixo

e salve com nome de copiar.bat (extensão .bat e não .txt)

Espero ter ajudado!

Website: https://exatasoft.com

Prof. Marcelo Brito. 
