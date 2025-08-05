tableextension 50101 EdiSalesOrderButton extends "Sales Header"
{
    fields
    {
        field(50100; "Send EDI"; Boolean)
        {
            Caption = 'Send EDI';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if (Rec."EDI Change Reason" <> '') and (Rec."Send EDI" = true) then begin
                    Rec."EDI Change Reason" := '';
                end;
            end;
        }
        field(50101; "EDI Change Reason"; Text[250])
        {
            Caption = 'EDI Change Reason';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if (Rec."Send EDI" = true) and (Rec."EDI Change Reason" <> '') then begin
                    Message('Please set the EDI button to "false" mode before changing the reason.');
                    Rec."Send EDI" := true;
                    Rec."EDI Change Reason" := '';
                end;
            end;
        }
    }
}
