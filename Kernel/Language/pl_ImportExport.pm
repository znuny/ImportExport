# --
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::pl_ImportExport;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminImportExport.tt
    $Self->{Translation}->{'Import/Export Management'} = 'Zarządzanie Importem/Exportem';
    $Self->{Translation}->{'Add template'} = 'Dodaj szablon';
    $Self->{Translation}->{'Create a template to import and export object information.'} = 'Utwórz szablon do importu i eksportu danych obiektów.';
    $Self->{Translation}->{'To use this module, you need to install ITSMConfigurationManagement or any other package that provides back end for objects to be imported and exported.'} =
        'Aby używać tego modułu musisz zainstalować ITSMConfigurationManagement lub inny pakiet dostarczający zaplecze do importu i eksportu obiektów.';
    $Self->{Translation}->{'Step 1 of 5 - Edit common information'} = 'Krok 1 z 5 - Edycja danych ogólnych';
    $Self->{Translation}->{'Step 2 of 5 - Edit object information'} = 'Krok 2 z 5 - Edycja danych obiektowych';
    $Self->{Translation}->{'Step 3 of 5 - Edit format information'} = 'Krok 3 z 5 - Edycja danych formatu';
    $Self->{Translation}->{'Step 4 of 5 - Edit mapping information'} = 'Krok 4 z 5 - Edycja danych mapowania';
    $Self->{Translation}->{'Step 5 of 5 - Edit search information'} = 'Krok 5 z 5 - Edycja danych wyszukiwania';
    $Self->{Translation}->{'Delete this template'} = 'Usuń ten szablon';
    $Self->{Translation}->{'Name is required!'} = 'Nazwa jest wymagana!';
    $Self->{Translation}->{'Object is required!'} = 'Obiekt jest wymagany!';
    $Self->{Translation}->{'Format is required!'} = 'Format jest wymagany!';
    $Self->{Translation}->{'is required!'} = 'jest wymagana(y)!';
    $Self->{Translation}->{'No map elements found.'} = 'Nie znaleziono elementów mapy.';
    $Self->{Translation}->{'Add Mapping Element'} = 'Dodaj element mapowania';
    $Self->{Translation}->{'Restrict export per search'} = 'Ogranicz eksport przez wyszukanie';
    $Self->{Translation}->{'Import information'} = 'Importuj informacje';
    $Self->{Translation}->{'Source File'} = 'Plik źródłowy';
    $Self->{Translation}->{'Start Import'} = 'Rozpocznij import';
    $Self->{Translation}->{'Import summary for %s'} = 'Podsumowanie importu dla %s';
    $Self->{Translation}->{'Records'} = 'Rekordy';
    $Self->{Translation}->{'Success'} = 'Powodzenie';
    $Self->{Translation}->{'Duplicate names'} = 'Duplikaty nazw';
    $Self->{Translation}->{'Last processed line number of import file'} = 'Nr ostaniej przetworzonej linii pliku importowego';
    $Self->{Translation}->{'Ok'} = 'Ok';
    $Self->{Translation}->{'Do you really want to delete this template item?'} = 'Czy na pewno chcesz usunąć ten element szablonu?';

    # Perl Module: Kernel/Modules/AdminImportExport.pm
    $Self->{Translation}->{'No object backend found!'} = 'Nie znaleziono zaplecza dla obiektu!';
    $Self->{Translation}->{'No format backend found!'} = 'Nie znaleziono zaplecza dla formatu!';
    $Self->{Translation}->{'Template not found!'} = 'Nie znaleziono szablonu!';
    $Self->{Translation}->{'Can\'t insert/update template!'} = 'Nie można dodać/zmienić szablonu!';
    $Self->{Translation}->{'Needed TemplateID!'} = 'Potrzebny TemplateID!';
    $Self->{Translation}->{'Error occurred. Import impossible! See Syslog for details.'} = 'Wystąpił błąd. Import niemożliwy! Szczegóły w Logu systemowym.';
    $Self->{Translation}->{'Error occurred. Export impossible! See Syslog for details.'} = 'Wystąpił błąd. Eksport niemożliwy! Szczegóły w Logu systemowym.';
    $Self->{Translation}->{'Template List'} = 'Lista Szablonów';
    $Self->{Translation}->{'number'} = 'liczba';
    $Self->{Translation}->{'number bigger than zero'} = 'liczba większa od zera';
    $Self->{Translation}->{'integer'} = 'liczba całkowita';
    $Self->{Translation}->{'integer bigger than zero'} = 'liczba całkowita większa od zera';
    $Self->{Translation}->{'Element required, please insert data'} = 'Element wymagany, podaj dane';
    $Self->{Translation}->{'Invalid data, please insert a valid %s'} = 'Nieprawidłowe dane, wprowadź prawidłowe %s';
    $Self->{Translation}->{'Format not found!'} = 'Nieznany format!';

    # Perl Module: Kernel/System/ImportExport/FormatBackend/CSV.pm
    $Self->{Translation}->{'Column Separator'} = 'Separator kolumny';
    $Self->{Translation}->{'Tabulator (TAB)'} = 'Tabulator (TAB)';
    $Self->{Translation}->{'Semicolon (;)'} = 'Średnik (;)';
    $Self->{Translation}->{'Colon (:)'} = 'Dwukropek (:)';
    $Self->{Translation}->{'Dot (.)'} = 'Kropka (.)';
    $Self->{Translation}->{'Comma (,)'} = 'Przecinek (,)';
    $Self->{Translation}->{'Charset'} = 'Kodowanie';
    $Self->{Translation}->{'Include Column Headers'} = 'Umieść nagłówki kolumn';
    $Self->{Translation}->{'Column'} = 'Kolumna';

    # JS File: var/httpd/htdocs/js/ITSM.Admin.ImportExport.js
    $Self->{Translation}->{'Deleting template...'} = 'Usuwanie szablonu...';
    $Self->{Translation}->{'There was an error deleting the template. Please check the logs for more information.'} =
        'Wystąpił błąd podczas usuwania szablonu. Sprawdź logi aby znaleźć więcej informacji.';
    $Self->{Translation}->{'Template was deleted successfully.'} = 'Szablon pomyślnie usunięto.';

    # SysConfig
    $Self->{Translation}->{'Format backend module registration for the import/export module.'} =
        'Moduł formatowania backend dla modułu import/eksport.';
    $Self->{Translation}->{'Import and export object information.'} = 'Importuj i eksportuj informacje obiektów.';
    $Self->{Translation}->{'Import/Export'} = 'Import/eksport';


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
