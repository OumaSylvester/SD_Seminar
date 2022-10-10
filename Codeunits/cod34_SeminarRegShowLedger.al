codeunit 50134 "CSD Seminar Reg ShowLedger"
//CSD1.0 - 2022 Oct 7
{
    TableNo = "CSD Seminar Register";

    trigger OnRun()
    begin
        SeminarLedgerEntry.SetRange("Entry No.", "From Entry No.", "To Entry No.");
        Page.Run(Page::"CSD Seminar Ledger Entries", SeminarLedgerEntry);
    end;
    
    var
        SeminarLedgerEntry : Record "CSD Seminar Ledger Entry";
}