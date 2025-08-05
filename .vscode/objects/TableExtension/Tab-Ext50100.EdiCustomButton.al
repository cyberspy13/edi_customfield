tableextension 50100 Edi_CustomButton extends Customer
{
    fields
    {
        field(50100; "Send EDI Documents"; Boolean)
        {
            Caption = 'Send EDI Documents';
            DataClassification = CustomerContent;
        }
        field(50101; "EDI Shipments"; Integer)
        {
            Caption = 'EDI Shipments';
            FieldClass = FlowField;
            CalcFormula = count("Sales Shipment Header" where("Sell-to Customer No." = field("No."), "Send EDI" = const(true)));
            Editable = false;
        }
        field(50102; "EDI Invoices"; Integer)
        {
            Caption = 'EDI Invoices';
            FieldClass = FlowField;
            CalcFormula = Count("Sales Invoice Header" where("Sell-to Customer No." = field("No."), "Send EDI" = const(true)));
            Editable = false;
        }
    }
}
