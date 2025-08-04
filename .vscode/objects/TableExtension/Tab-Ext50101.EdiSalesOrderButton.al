tableextension 50101 EdiSalesOrderButton extends "Sales Header"
{
    fields
    {
        field(50100; "Send EDI"; Boolean)
        {
            Caption = 'Send EDI';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                SalesHeader: Record "Sales Header";
            begin
                if Rec."Send EDI" = false then begin
                    if Rec."EDI Change Reason" <> '' then begin
                        Rec."Send EDI" := false;
                    end else begin
                        Message('Please Provide the reason of change for EDI documents.');
                        Rec."Send EDI" := true;
                    end;
                end;
            end;
        }
        field(50101; "EDI Change Reason"; Text[250])
        {
            Caption = 'EDI Change Reason';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if (Rec."EDI Change Reason" <> '') and (Rec."Send EDI" = true) then begin
                    Message('EDI status changed. Reason: %1', Rec."EDI Change Reason");
                    Rec."Send EDI" := false;
                end;
            end;
        }
    }
}
