table 50140 "CSD Seminar Cue"
// CSD1.00 - 2022 Oct 15 - D. E. Veloper
//Created New table

{
    Caption = 'Seminar Cue';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = ToBeClassified;
        }
        field(2; Planned; Integer)
        {
            Caption = 'Planned';
            FieldClass = FlowField;
            CalcFormula = count("CSD Seminar Reg. Header" where(Status = const(Planning)));
        }
        field(3; Registered; Integer)
        {
            Caption = 'Registered';
            FieldClass = FlowField;
            CalcFormula = count("CSD Seminar Reg. Header" where(Status = const(Registration)));
        }
        field(4; Closed; Integer)
        {
            Caption = 'Closed';
            FieldClass = FlowField;
            CalcFormula = count("CSD Seminar Reg. Header" where(Status = const(Closed)));
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}