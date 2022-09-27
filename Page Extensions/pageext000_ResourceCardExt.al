pageextension 50100 "CSD ResourceCardExt" extends "Resource Card"
//CSD1.00 2022-Sep 27 - D.E Veloper
//Added new fields:
// - Internal/External
// - Maximum Participants
//Added new FastTab
//Added code to OnOpenPage trigger
{
    layout
    {
        
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }

            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {

            }
        }

        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowMaxField;
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {

                }
            }
        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    trigger OnAfterGetRecord();
    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(false);
    end;

    var
        [InDataSet]
        ShowMaxField:Boolean;
}