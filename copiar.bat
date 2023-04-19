@echo off 
REM  *************************************** 
REM  * Script - copiar.bat                 * 
REM  * Autor: Prof. Marcelo Brito.         * 
REM  * Data : 13/04/2023                   * 
REM  * Sobre: script para copiar uma pasta * 
REM  *        e suas subpastas, ignorando  * 
REM  *        arquivos de uma determinada  * 
REM  *        extensao.                    * 
REM  *************************************** 
echo  _________________________________ 
echo [  ___  __  ____  __   __   ____  ] 
echo [ / __)/  \(  _ \(  ) / _\ (  _ \ ] 
echo [( (__(  O )) __/ )( /    \ )   / ] 
echo [ \___)\__/(__)  (__)\_/\_/(__\_) ] 
echo [                by Marcelo Brito ] 
echo [_________________________________] 
if [%1]==[]  goto ajuda 
if [%2]==[]  goto ajuda 
if [%3]==[]  goto ajuda 
echo .%1 > q.txt & xcopy /E/C/Q/Y/I/EXCLUDE:q.txt "%2" "%3" 
del q.txt 
echo. 
goto fim 
:ajuda 
echo. 
echo  __________________________________________________ 
echo [    Sintaxe incorreta ou faltando argumentos!     ] 
echo **************************************************** 
echo *               Sintaxe - Ajuda                    * 
echo *                                                  * 
echo * Copiar ext origem destino                        * 
echo *                                                  * 
echo * Onde:                                            * 
echo *  ext     =  extensao a ser ignorada.             * 
echo *  origem  =  pasta de origem  (caminho completo)  * 
echo *  destino =  pasta de destino (caminho completo)  * 
echo *                                                  * 
echo * Exemplo: copiar txt c:/PastaA  c:/PastaB         * 
echo *                                                  * 
echo **************************************************** 
:fim 
echo [ Prof. Marcelo Brito - www.exatasoft.com ] 
echo.  
echo [ Script Finalizado!!! ] 
echo. 
pause 
cls 
REM ******************* Fim Script ********************** 
