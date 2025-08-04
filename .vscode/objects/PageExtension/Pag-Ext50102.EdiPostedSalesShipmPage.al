pageextension 50102 PostedSalesShipmPage extends "Posted Sales Shipment"
{
    layout
    {
        addlast("General")
        {
            field("Send EDI"; Rec."Send EDI")
            {
                ApplicationArea = All;
                ToolTip = 'Indicates whether EDI documents should be sent for this posted sales shipment.';
            }
        }
    }
}
