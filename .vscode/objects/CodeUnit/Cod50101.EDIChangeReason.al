codeunit 50101 EDIChangeReason
{
    local procedure ChangeReason()
    var
        SalesHeader: Record "Sales Header";
    begin
        if SalesHeader."Send EDI" = false then begin
            Message('Please Provide the reason of change for EDI documents.');
        end;
    end;
}