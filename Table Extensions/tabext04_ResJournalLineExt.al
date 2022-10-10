tableextension 50104 "CSD ResJournalLineext" extends "Res. Journal Line"
{
    fields
    {
        field(50100;"CSd Seminar No.";Code[20])
        {
            Caption='Seminar No.';
            TableRelation="CSD Seminar";
        }
        field(50101;"CSD Seminar Registration No.";Code[20])
        {
            Caption='Seminar Registration No.';
            TableRelation="CSD Seminar Reg. Header";
        }
    }
    
    var
        myInt: Integer;
}