pageextension 50100 EdiCustomButtonPage extends "Customer Card"
{
    layout
    {
        addlast("General")
        {
            field("Send EDI Documents"; Rec."Send EDI Documents")
            {
                ApplicationArea = All;
                ToolTip = 'Indicates whether EDI documents should be sent for this customer.';
            }
            field("EDI Shipments"; Rec."EDI Shipments")
            {
                ApplicationArea = All;
                ToolTip = 'Number of EDI shipments for this customer.';
            }
            field("EDI Invoices"; Rec."EDI Invoices")
            {
                ApplicationArea = All;
                ToolTip = 'Number of EDI invoices for this customer.';
            }
        }
    }
}
