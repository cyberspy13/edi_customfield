pageextension 50103 EdiPostedSalesInvoice extends "Posted Sales Invoice"
{
    layout
    {
        addlast("General")
        {
            field("Send EDI"; Rec."Send EDI")
            {
                ApplicationArea = All;
                ToolTip = 'Indicates whether EDI documents should be sent for this posted sales invoice.';
            }
        }
    }
}
