page 50106 "CSD Seminar Comment Sheet"
{
    PageType = Card;
    Caption = 'Seminar Comment Sheet';
    SourceTable = "CSd Seminar Comment Line";
    
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
    
    
    
    var
        myInt: Integer;
}