page 50106 "CSD Seminar Comment Sheet"
{
    PageType = List;
    Caption = 'Seminar Comment Sheet';
    SourceTable = "CSd Seminar Comment Line";
    AutoSplitKey = true;
    UsageCategory = Lists;    
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Date;Date)
                {
                    
                    
                }

                field(Code;Code)
                {
                    Visible = false;
                }
                field(Comment;Comment)
                {

                }
            }
        }
    }

trigger OnNewRecord(BelowwxRec:Boolean)

begin
    SetupNewLine;
end;
}