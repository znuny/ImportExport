# --
# Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::Output::HTML::Layout::ImportExport;

use strict;
use warnings;

our $ObjectManagerDisabled = 1;

=head1 NAME

Kernel::Output::HTML::Layout::ImportExport

=cut

=head2 ImportExportFormInputCreate()

Returns a input field html string

    my $String = $LayoutObject->ImportExportFormInputCreate(
        Item  => $ItemRef,
        Value => 'Value',   # (optional)
    );

=cut

sub ImportExportFormInputCreate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{Item} ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => 'Need Item!'
        );
        return;
    }

    # load backend
    my $BackendObject = $Self->_ImportExportLoadLayoutBackend(
        Type => $Param{Item}->{Input}->{Type},
    );

    return '' if !$BackendObject;

    # lookup item value
    my $String = $BackendObject->FormInputCreate(%Param);

    return $String;
}

=head2 ImportExportFormDataGet()

Returns the values from the html form as hash reference

    my $FormData = $LayoutObject->ImportExportFormDataGet(
        Item => $ItemRef,
    );

=cut

sub ImportExportFormDataGet {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{Item} ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => 'Need Item!'
        );
        return;
    }

    # load backend
    my $BackendObject = $Self->_ImportExportLoadLayoutBackend(
        Type => $Param{Item}->{Input}->{Type},
    );

    return if !$BackendObject;

    # get form data
    my $FormData = $BackendObject->FormDataGet(%Param);

    return $FormData;
}

=head2 _ImportExportLoadLayoutBackend()

To load a import/export layout backend module

    my $Backend = $LayoutObject->_ImportExportLoadLayoutBackend(
        Type => 'Selection',
    );

An instance of the loaded backend module is returned.

=cut

sub _ImportExportLoadLayoutBackend {
    my ( $Self, %Param ) = @_;

    # get log object
    my $LogObject = $Kernel::OM->Get('Kernel::System::Log');

    if ( !$Param{Type} ) {
        $LogObject->Log(
            Priority => 'error',
            Message  => 'Need Type!',
        );
        return;
    }

    my $GenericModule = "Kernel::Output::HTML::ImportExport::Layout$Param{Type}";

    # load the backend module
    if ( !$Kernel::OM->Get('Kernel::System::Main')->Require($GenericModule) ) {
        $LogObject->Log(
            Priority => 'error',
            Message  => "Can't load backend module $Param{Type}!",
        );
        return;
    }

    # create new instance
    my $BackendObject = $GenericModule->new(
        %{$Self},
        %Param,
        LayoutObject => $Self,
    );

    if ( !$BackendObject ) {
        $LogObject->Log(
            Priority => 'error',
            Message  => "Can't create a new instance of backend module $Param{Type}!",
        );
        return;
    }

    return $BackendObject;
}

1;

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<https://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see L<https://www.gnu.org/licenses/gpl-3.0.txt>.

=cut
