page 50102 "CSD Seminar List"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar";
    CardPageId = 50101;
    Editable = false;
    Caption = 'Seminar List';
    
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                    
                    
                }

                field("Name"; "Name")
                {

                }
                field("Seminar Duration"; "Seminar Duration")
                {

                }

                field("Seminar Price"; "Seminar Price")
                {

                }
                field("Minimum Participants"; "Minimum Participants")
                {

                }

                field("Maximum Participants"; "Maximum Participants")
                {

                }
            }
        }

        area(FactBoxes)
        {
            systempart("Links"; Links)
            {

            }

            systempart("Notes"; Notes)
            {

            }
        }
    }
    
    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mment")
                {
                    RunObject=page "CSD Seminar Comment Sheet";
                    RunPageLink = "Table Name" = const(Seminar),
                          "No."=field("No.");

                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }
            }
        }
    }
    
}