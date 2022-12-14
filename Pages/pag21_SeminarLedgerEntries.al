page 50121 "CSD Seminar Ledger Entries"
// CSD1.00 - 2022 Oct 7 - D. E. Veloper
//   Added Action Navigate
{
    Caption = 'Seminar Ledger Entries';
    PageType = List;
    SourceTable = "CSD Seminar Ledger Entry";
    Editable = false;
   // UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Posting Date"; "Posting Date")
                {
                    ApplicationArea = All;
                }
                field("Document No."; "Document No.")
                {
                    ApplicationArea = All;
                }
                field("Document Date"; "Document Date")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Entry Type"; "Entry Type")
                {
                    ApplicationArea = All;
                }
                field("Seminar No."; "Seminar No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Bill-to Customer No."; "Bill-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Charge Type"; "Charge Type")
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Quantity)
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; "Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Total Price"; "Total Price")
                {
                    ApplicationArea = All;
                }
                field(Chargeable; Chargeable)
                {
                    ApplicationArea = All;
                }
                field("Participant Contact No."; "Participant Contact No.")
                {
                    ApplicationArea = All;
                }
                field("Participant Name"; "Participant Name")
                {
                    ApplicationArea = All;
                }
                field("Instructor Resource No."; "Instructor Resource No.")
                {
                    ApplicationArea = All;
                }
                field("Room Resource No."; "Room Resource No.")
                {
                    ApplicationArea = All;
                }
                field("Starting Date"; "Starting Date")
                {
                    ApplicationArea = All;
                }
                field("Seminar Registration No."; "Seminar Registration No.")
                {
                    ApplicationArea = All;
                }
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
            systempart("Notes"; Notes)
            {
                ApplicationArea = All;
            }
            systempart("links"; Links)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("&Navigate")
            {
                Caption = '&Navigate';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;

                trigger OnAction();
                var
                    Navigate: page Navigate;
                begin
                    Navigate.SetDoc("Posting Date", "Document No.");
                    Navigate.Run();
                end;
            }
        }
    }
}
