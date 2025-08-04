pageextension 50101 EdiSalesOrderButtonPage extends "Sales Order"
{
    layout
    {
        addlast("General")
        {
            field("Send EDI"; Rec."Send EDI")
            {
                ApplicationArea = All;
                ToolTip = 'Indicates whether EDI documents should be sent for this sales order.';
            }
            field("EDI Change Reason"; Rec."EDI Change Reason")
            {
                ApplicationArea = All;
                ToolTip = 'Reason for any changes made to the EDI documents for this sales order.';
            }
        }
    }
}
