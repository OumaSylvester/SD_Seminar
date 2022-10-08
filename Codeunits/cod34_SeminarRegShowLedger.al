codeunit 50134 "CSd Seminar Reg.-ShowLedger"
//CSD1.0 - 2022 Oct 7
{
    TableNo = "CSd Seminar Register";

    trigger OnRun()
    begin
        SeminarLedgerEntry.SetRange("Entry No.", "From Entry No.", "To Entry No.");
        Page.Run(Page::"CSD Seminar Ledger Entries", SeminarLedgerEntry);
    end;
    
    var
        SeminarLedgerEntry : Record "CSD Seminar Ledger Entry";
}