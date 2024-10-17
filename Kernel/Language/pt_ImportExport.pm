# --
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::pt_ImportExport;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminImportExport.tt
    $Self->{Translation}->{'Import/Export Management'} = 'Gestão de Importação/Exportação';
    $Self->{Translation}->{'Step 1 of 5 - Edit common information'} = 'Passo 1 de 5 - Editar informações comuns';
    $Self->{Translation}->{'Step 2 of 5 - Edit object information'} = 'Passo 2 de 5 - Editar informações de objetos';
    $Self->{Translation}->{'Step 3 of 5 - Edit format information'} = 'Passo 3 de 5 - Editar informações de formatação';
    $Self->{Translation}->{'Step 4 of 5 - Edit mapping information'} = 'Passo 4 de 5 - Editar informação de mapeamento';
    $Self->{Translation}->{'Step 5 of 5 - Edit search information'} = 'Passo 5 de 5 - Editar informação de procura';
    $Self->{Translation}->{'Add template'} = 'Adicionar modelo';
    $Self->{Translation}->{'Create a template to import and export object information.'} = 'Criar um modelo para importar e exportar informações de objeto.';
    $Self->{Translation}->{'To use this module, you need to install ITSMConfigurationManagement or any other package that provides back end for objects to be imported and exported.'} =
        'Para utilizar este módulo, é necessário instalar o ITSMConfigurationManagement ou qualquer outro pacote que forneça o back end para os objetos a importar e exportar.';
    $Self->{Translation}->{'Start Import'} = 'Iniciar Importação';
    $Self->{Translation}->{'Start Export'} = 'Iniciar Exportação';
    $Self->{Translation}->{'Delete this template'} = 'Eliminar este modelo';
    $Self->{Translation}->{'Name is required!'} = 'Nome é obrigatório!';
    $Self->{Translation}->{'Object is required!'} = 'Objeto é obrigatório!';
    $Self->{Translation}->{'Format is required!'} = 'O formato é obrigatório!';
    $Self->{Translation}->{'is required!'} = 'é obrigatório!';
    $Self->{Translation}->{'No map elements found.'} = 'Não há elementos mapa encontrado.';
    $Self->{Translation}->{'Add Mapping Element'} = 'Adicionar elemento de mapeamento';
    $Self->{Translation}->{'Restrict export per search'} = 'Restringir exportação por pesquisa';
    $Self->{Translation}->{'Import information'} = 'Informações de importação';
    $Self->{Translation}->{'Source File'} = 'Arquivo de Origem';
    $Self->{Translation}->{'Import summary for %s'} = 'Resumo da importação de %s';
    $Self->{Translation}->{'Records'} = 'Registos';
    $Self->{Translation}->{'Success'} = 'Sucesso';
    $Self->{Translation}->{'Duplicate names'} = 'Nomes duplicados';
    $Self->{Translation}->{'Last processed line number of import file'} = 'Último número de linha processada do arquivo de importação';
    $Self->{Translation}->{'Ok'} = 'Ok';
    $Self->{Translation}->{'Do you really want to delete this template item?'} = 'Pretende mesmo apagar este item do modelo?';

    # Perl Module: Kernel/Modules/AdminImportExport.pm
    $Self->{Translation}->{'No object backend found!'} = 'Não foi encontrado nenhum objeto backend!';
    $Self->{Translation}->{'No format backend found!'} = 'Não foi encontrado nenhum formato backend!';
    $Self->{Translation}->{'Template not found!'} = 'Modelo não encontrado!';
    $Self->{Translation}->{'Can\'t insert/update template!'} = 'Não é possível inserir/atualizar o modelo!';
    $Self->{Translation}->{'Needed TemplateID!'} = 'Necessário TemplateID!';
    $Self->{Translation}->{'Error occurred. Import impossible! See Syslog for details.'} = 'Ocorreu um erro.Importação impossível!Verificar Syslog para detalhes.';
    $Self->{Translation}->{'Error occurred. Export impossible! See Syslog for details.'} = 'Ocorreu um erro.Exportação impossível!Verificar Syslog para detalhes.';
    $Self->{Translation}->{'Template List'} = 'Lista de modelos';
    $Self->{Translation}->{'number'} = 'número';
    $Self->{Translation}->{'number bigger than zero'} = 'número maior que zero';
    $Self->{Translation}->{'integer'} = 'inteiro';
    $Self->{Translation}->{'integer bigger than zero'} = 'inteiro maior que zero';
    $Self->{Translation}->{'Element required, please insert data'} = 'Elemento necessário, por favor inserir dados';
    $Self->{Translation}->{'Invalid data, please insert a valid %s'} = 'Dados inválidos, insira um dado válido %s';
    $Self->{Translation}->{'Format not found!'} = 'Formato não encontrado!';

    # Perl Module: Kernel/System/ImportExport/FormatBackend/CSV.pm
    $Self->{Translation}->{'Column Separator'} = 'Separador de Colunas';
    $Self->{Translation}->{'Tabulator (TAB)'} = 'Tabulação (TAB)';
    $Self->{Translation}->{'Semicolon (;)'} = 'Ponto e Vírgula (;)';
    $Self->{Translation}->{'Colon (:)'} = 'Dois Pontos (:)';
    $Self->{Translation}->{'Dot (.)'} = 'Ponto (.)';
    $Self->{Translation}->{'Comma (,)'} = 'Virgula (,)';
    $Self->{Translation}->{'Charset'} = 'Codificação de Caracteres';
    $Self->{Translation}->{'Include Column Headers'} = 'Incluir Cabeçalhos de Colunas';
    $Self->{Translation}->{'Column'} = 'Coluna';

    # JS File: var/httpd/htdocs/js/ITSM.Admin.ImportExport.js
    $Self->{Translation}->{'Deleting template...'} = 'Eliminando modelo...';
    $Self->{Translation}->{'There was an error deleting the template. Please check the logs for more information.'} =
        'Ocorreu um erro ao eliminar o modelo. Por favor, consulte os registos para mais informações.';
    $Self->{Translation}->{'Template was deleted successfully.'} = 'Modelo eliminado com sucesso.';

    # SysConfig
    $Self->{Translation}->{'Format backend module registration for the import/export module.'} =
        'Formatar módulo de registo backend do módulo de importação / exportação.';
    $Self->{Translation}->{'Import and export object information.'} = 'Importar e exportar informações de objeto.';
    $Self->{Translation}->{'Import/Export'} = 'Importar/Exportar';


    push @{ $Self->{JavaScriptStrings} //= [] }, (
    'Cancel',
    'Confirm',
    'Delete this template',
    'Deleting template...',
    'Template was deleted successfully.',
    'There was an error deleting the template. Please check the logs for more information.',
    );

}

1;
