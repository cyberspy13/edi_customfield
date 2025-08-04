tableextension 50103 EdiPostedSalesInvoice extends "Sales Invoice Header"
{
    fields
    {
        field(50100; "Send EDI"; Boolean)
        {
            Caption = 'Send EDI';
            DataClassification = ToBeClassified;
        }
    }
}
