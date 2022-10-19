codeunit 50131 "CSD Seminar Jnl.-Check Line"
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 7 - Lab 2-1
{
    TableNo = "CSD Seminar Journal Line";

    trigger OnRun();
    begin
        RunCheck(Rec);
    end;

    var
        GlSetup: Record "General Ledger Setup";
        UserSetup: Record "User Setup";
        AllowPostingFrom: Date;
        AllowPostingTo: Date;
        ClosingDateTxt: Label 'cannot be a closing date.';
        PostingDateTxt: label 'is not within your range of allowed posting dates.';

    procedure RunCheck(var SeminarJournalLine: Record "CSD Seminar Journal Line");
    begin
        SeminarJournalLine.Reset();
        if SeminarJournalLine.FindFirst() then begin;
        //With SeminarJournalLine do begin
            if SeminarJournalLine.EmptyLine() then
                exit;

            SeminarJournalLine.TestField("Posting Date");
            SeminarJournalLine.TestField("Instructor Resource No.");
            SeminarJournalLine.TestField("Seminar No.");

            case SeminarJournalLine."Charge Type" of
                SeminarJournalLine."Charge Type"::Instructor:
                    SeminarJournalLine.TestField("Instructor Resource No.");
                SeminarJournalLine."Charge Type"::Room:
                    SeminarJournalLine.TestField("Room Resource No.");
                SeminarJournalLine."Charge Type"::Participant:
                    SeminarJournalLine.TestField("Participant Contact No.");
            end;

            if SeminarJournalLine.Chargeable then
                SeminarJournalLine.TestField("Bill-to Customer No.");

            if SeminarJournalLine."Posting Date" = ClosingDate(SeminarJournalLine."Posting Date") then
                SeminarJournalLine.FieldERROR("Posting Date", ClosingDateTxt);

            if (AllowPostingFrom = 0D) and (AllowPostingTo = 0D) then begin
                if UserId() <> '' then
                    if UserSetup.GET(UserId()) then begin
                        AllowPostingFrom := UserSetup."Allow Posting From";
                        AllowPostingTo := UserSetup."Allow Posting To";
                    end;

                if (AllowPostingFrom = 0D) and (AllowPostingTo = 0D) then begin
                    GLSetup.Get();
                    AllowPostingFrom := GLSetup."Allow Posting From";
                    AllowPostingTo := GLSetup."Allow Posting To";
                end;
                if AllowPostingTo = 0D then
                    AllowPostingTo := DMY2Date(31, 12, 9999);
            end;
            if (SeminarJournalLine."Posting Date" < AllowPostingFrom) OR (SeminarJournalLine."Posting Date" > AllowPostingTo) then
                SeminarJournalLine.FieldError("Posting Date", PostingDateTxt);

            if (SeminarJournalLine."Document Date" <> 0D) then
                if (SeminarJournalLine."Document Date" = CLOSINGDATE(SeminarJournalLine."Document Date")) then
                   SeminarJournalLine.FieldERROR("Document Date", PostingDateTxt);
        end;
    end;
}
