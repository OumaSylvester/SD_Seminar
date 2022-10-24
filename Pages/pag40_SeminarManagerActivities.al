page 50140 "CSD Seminar Manager Activities"
{
    Caption = 'Seminar Manager Activities';
    PageType = CardPart;
    SourceTable = "CSD Seminar Cue";
    Editable = false;

    layout
    {
        area(Content)
        {
            cuegroup(Registrations)
            {
                Caption = 'Registrations';
                field(Planned; Planned)
                {
                    ApplicationArea = All;

                }
                field(Registered; Registered)
                {
                    ApplicationArea = All;

                }

                actions
                {
                    action(New)
                    {
                        Caption = 'New';
                        RunObject = page "CSD Seminar Registration";
                        RunPageMode = Create;
                    }
                }
            }
            cuegroup("For Posting")
            {
                Caption = 'For Posting';
                field(Closed; Closed)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    trigger OnOpenPage();
    begin
        if not get then begin
            init;
            insert;
        end
        
    end;
}