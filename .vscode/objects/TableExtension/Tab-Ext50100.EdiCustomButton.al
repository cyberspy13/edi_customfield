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
            DataClassification = CustomerContent;
        }
        field(50102; "EDI Invoices"; Integer)
        {
            Caption = 'EDI Invoices';
            DataClassification = CustomerContent;
        }
    }
}
