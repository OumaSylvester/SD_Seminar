page 50107 "CSD Seminar Comment List"
{
    PageType = Card;
    Caption = 'Seminar Comment Sheet';
    SourceTable = "CSd Seminar Comment Line";
    Editable = false;
    
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