codeunit 50131 "CSD Seminar Jnl.-Check Line"
{
    TableNo = "CSd Seminar Journal Line";

    trigger OnRun();
    begin

    end;

    var
        
        GlSetup: Record "General Ledger Setup";
        UserSetup: Record "User Setup";
        AllowPostingFrom: Date;
        AllowPostingTo: Date;
        ClosingDateTxt: Label 'cannot be a closing date.';
        PostingDateTxt: Label 'is not within your range of allowed posting dates.';
}