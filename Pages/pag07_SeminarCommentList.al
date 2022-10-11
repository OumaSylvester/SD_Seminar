page 50107 "CSD Seminar Comment List"
{
    PageType = List;
    Caption = 'Seminar Comment List';
    SourceTable = "CSD Seminar Comment Line";
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