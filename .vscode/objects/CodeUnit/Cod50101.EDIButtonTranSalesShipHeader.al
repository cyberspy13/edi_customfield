codeunit 50101 EDIButtonTranSalesShipHeader
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterInsertShipmentHeader', '', false, false)]
    local procedure EdiOnAfterInsertShipmentHeader(var SalesHeader: Record "Sales Header"; var SalesShipmentHeader: Record "Sales Shipment Header")
    begin
        SalesShipmentHeader."Send EDI" := SalesHeader."Send EDI";
    end;
}

