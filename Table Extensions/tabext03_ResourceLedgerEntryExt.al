tableextension 50103 "CSD ResourceLedgerEntryExt"  extends "Res. Ledger Entry"
{
    fields
    {
        field(50100; "CSD Seminar No."; Code[20])
        {
            Caption = 'Seminar No.';
            TableRelation = "CSD Seminar";
        }

        field(50101;"CSd Seminar Registration No.";Code[20])
        {
            Caption='Seminar Registration No.';
            TableRelation ="CSD Seminar Reg. Header";
        }
    }
    
    var
        myInt: Integer;
}