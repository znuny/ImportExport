# --
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::pt_BR_ImportExport;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminImportExport.tt
    $Self->{Translation}->{'Import/Export Management'} = 'Gerenciamento de Importação/Exportação';
    $Self->{Translation}->{'Add template'} = 'Adicionar modelo';
    $Self->{Translation}->{'Create a template to import and export object information.'} = 'Criar um modelo para importar e exportar informações de objeto.';
    $Self->{Translation}->{'To use this module, you need to install ITSMConfigurationManagement or any other package that provides back end for objects to be imported and exported.'} =
        'Para usar este módulo, você precisa instalar o ITSMConfigurationManagement ou qualquer outro pacote que forneça back-end para objetos a serem importados e exportados.';
    $Self->{Translation}->{'Step 1 of 5 - Edit common information'} = 'Passo 1 de 5 - Editar informações comuns';
    $Self->{Translation}->{'Step 2 of 5 - Edit object information'} = 'Passo 2 de 5 - Editar informações do objeto';
    $Self->{Translation}->{'Step 3 of 5 - Edit format information'} = 'Passo 3 de 5 - Editar informações de formato';
    $Self->{Translation}->{'Step 4 of 5 - Edit mapping information'} = 'Passo 4 de 5 - Editar informações de mapeamento';
    $Self->{Translation}->{'Step 5 of 5 - Edit search information'} = 'Passo 5 de 5 - Editar informações de pesquisa';
    $Self->{Translation}->{'Delete this template'} = 'Remover este modelo';
    $Self->{Translation}->{'Name is required!'} = 'Nome é obrigatório!';
    $Self->{Translation}->{'Object is required!'} = 'Objeto é obrigatório!';
    $Self->{Translation}->{'Format is required!'} = 'O formato é obrigatório!';
    $Self->{Translation}->{'is required!'} = 'é obrigatório!';
    $Self->{Translation}->{'No map elements found.'} = 'Não há elementos mapa encontrado.';
    $Self->{Translation}->{'Add Mapping Element'} = 'Adicionar elemento de mapeamento';
    $Self->{Translation}->{'Restrict export per search'} = 'Restringir exportação por pesquisa';
    $Self->{Translation}->{'Import information'} = 'Informações de importação';
    $Self->{Translation}->{'Source File'} = 'Arquivo de Origem';
    $Self->{Translation}->{'Start Import'} = 'Iniciar Importação';
    $Self->{Translation}->{'Import summary for %s'} = 'Resumo de importação para %s';
    $Self->{Translation}->{'Records'} = 'Registros';
    $Self->{Translation}->{'Success'} = 'Sucesso';
    $Self->{Translation}->{'Duplicate names'} = 'Nomes duplicados';
    $Self->{Translation}->{'Last processed line number of import file'} = 'Último número de linha processada do arquivo de imporatação';
    $Self->{Translation}->{'Ok'} = 'Ok';
    $Self->{Translation}->{'Do you really want to delete this template item?'} = 'Deseja realmente excluir este item de modelo?';

    # Perl Module: Kernel/Modules/AdminImportExport.pm
    $Self->{Translation}->{'No object backend found!'} = 'Nenhum objeto backend encontrado!';
    $Self->{Translation}->{'No format backend found!'} = 'Nenhum formato backend encontrado!';
    $Self->{Translation}->{'Template not found!'} = 'Modelo não encontrado!';
    $Self->{Translation}->{'Can\'t insert/update template!'} = 'Não é possível inserir/atualizar modelo!';
    $Self->{Translation}->{'Needed TemplateID!'} = 'Necessário TemplateID!';
    $Self->{Translation}->{'Error occurred. Import impossible! See Syslog for details.'} = 'Ocorreu um erro. Foi impossível realizar a importação! Verifique o Syslog para mais detalhes.';
    $Self->{Translation}->{'Error occurred. Export impossible! See Syslog for details.'} = 'Ocorreu um erro. Foi impossível realizar a exportação! Verifique o Syslog para mais detalhes.';
    $Self->{Translation}->{'Template List'} = 'Lista de modelos';
    $Self->{Translation}->{'number'} = 'número';
    $Self->{Translation}->{'number bigger than zero'} = 'número maior que zero';
    $Self->{Translation}->{'integer'} = 'inteiro';
    $Self->{Translation}->{'integer bigger than zero'} = 'inteiro maior que zero';
    $Self->{Translation}->{'Element required, please insert data'} = 'Elemento necessário, por favor insira o dado';
    $Self->{Translation}->{'Invalid data, please insert a valid %s'} = 'Dado inválido, por favor insira um %s válido';
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
    $Self->{Translation}->{'Deleting template...'} = 'Removendo modelo...';
    $Self->{Translation}->{'There was an error deleting the template. Please check the logs for more information.'} =
        'Ocorreu um erro ao excluir o modelo. Verifique os logs para obter mais informações.';
    $Self->{Translation}->{'Template was deleted successfully.'} = 'Modelo removido com sucesso.';

    # SysConfig
    $Self->{Translation}->{'Format backend module registration for the import/export module.'} =
        'Formato de registro backend do módulo de importação / exportação módulo.';
    $Self->{Translation}->{'Import and export object information.'} = 'Importar e exportar informações de objeto.';
    $Self->{Translation}->{'Import/Export'} = 'Importação/Exportação';


    push @{ $Self->{JavaScriptStrings} // [] }, (
    'Cancel',
    'Delete',
    'Delete this template',
    'Deleting template...',
    'Template was deleted successfully.',
    'There was an error deleting the template. Please check the logs for more information.',
    );

}

1;
