tableextension 50102 EdiPostedSalesShip extends "Sales Shipment Header"
{
    fields
    {
        field(50100; "Send EDI"; Boolean)
        {
            Caption = 'Send EDI';
            DataClassification = CustomerContent;
        }
    }
}
