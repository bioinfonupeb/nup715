# NUP715 - Bioinformática
Este repositório contém alguns dos materiais de apoio da disciplina NUP715 (Bionformática) da UFOP.

## Intrutores da disciplina NUP715
 - Izinara Rosse da Cruz - Lattes: http://lattes.cnpq.br/4671130343607854
 - Lauro Ângelo Gonçalves de Moraes - Lattes: http://lattes.cnpq.br/7273329679145458

## Apostila guiada
O arquivo [Introducao-ao-Shell-para-Bioinformatica.pdf](https://github.com/bioinfonupeb/nup715/blob/main/Introducao-ao-Shell-para-Bioinformatica.pdf) contém o material para auxiliar os alunos a compreenderem e exercitarem alguns conceitos e comandos básicos do Linux, que servirão de base para o posterior aprendizado das ferramentas de bioinformática utilizadas na sala de aula.

## Configuração inicial do ambiente da apostila
Alguns exemplos e exercícios presentes na apostila devem ser baixados deste repositório. Para configurar o ambiente, siga os seguintes passos:

- Abra o seu terminal de comandos.
- Utilize o comando `cd ~` para acessar o seu diretório inicial de usuário.
- Agora utilize o seguinte comando para baixar o script que irá baixar os demais arquivos e diretórios: `wget https://tinyurl.com/2dfyhwph -O prepare-workspace.sh`
- Agora execute o comando `bash -i prepare-workspace.sh` para executar o script e realizar os downloads.
- Ao usar o comando `ls`, será possível listar todas as novas pastas baixadas.

## Fontes dos dados utilizados
- biostats.csv: https://people.math.sc.edu/Burkardt/datasets/csv/csv.html
- grades.csv: https://people.math.sc.edu/Burkardt/datasets/csv/csv.html
- ecoli_promoters.faa: https://github.com/solovictor/CNNPromoterData/blob/master/Ecoli_prom.fa
- fasta-sequences-example.faa: http://prodata.swmed.edu/promals/info/fasta_format_file_example.htm
- useless-file.txt: gerado atráves do site https://www.lipsum.com/
