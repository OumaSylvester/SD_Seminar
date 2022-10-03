table 50101 "CSD Seminar"
{
    Caption = 'Seminar';
    LookupPageId = 50102;
    DrillDownPageId = 50102;
    
    fields
    {
        field(1;"No."; Code[20])
        {
            Caption = 'No';
            
        }

        field(20; "Name"; Text[50])
        {
            Caption = 'Name';
        }

        field(30; "Seminar Duration"; Decimal)
        {
            Caption = 'Seminar Duration';
            DecimalPlaces = 0:1;
        }
        field(40;   "Minimum Participants"; Integer)
        {
            Caption = 'Minimum Participants';
        }

        field(50;   "Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }

        field(60; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
        }

        field(70;Blocked; Boolean)
        {
            Caption='Blocked';
        }
        field(80; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable=false;
        }

        field(90; Comment;Boolean)
        {
            Caption = 'Comment';
            Editable=false;
            FieldClass = FlowField;
            CalcFormula = exist("CSD Seminar Comment Line" where("Table Name" = 
            const("Seminar"), "No."= Field("No.")));
        }

        field(100;"Seminar Price"; Decimal)
        {
            Caption = 'Seminar Price';
            AutoFormatType=1;
        }

        field(110; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption= 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }

        field(120; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }

        field(130; "No. Series"; Code[10])
        {
            Editable=false;
            Caption='No. Series';
            TableRelation = "No. Series";
        }

    }
    
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    
    
    
}