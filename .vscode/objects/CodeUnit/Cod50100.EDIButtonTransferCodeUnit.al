codeunit 50100 EDIButtonTransferCodeUnit
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterInitRecord', '', false, false)]
    local procedure OnAfterInitRecord(var SalesHeader: Record "Sales Header")
    var
        Customer: Record Customer;
    begin
        Customer.Get(SalesHeader."Sell-to Customer No.");
        SalesHeader."Send EDI" := Customer."Send EDI Documents";
    end;
}
