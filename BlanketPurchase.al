pageextension 50139 "Blanket PO Export" extends "Blanket Purchase Orders"
{
    actions
    {
        addlast(creation)
        {
            action("Export to Excel")
            {
                ApplicationArea = All;
                Caption = 'Export to Excel';
                Image = Excel;
                Promoted = true;
                PromotedCategory = New;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    ExportToExcelCU: Codeunit "Blanket PO Export";
                begin
                    ExportToExcelCU.ExportBlanketPOToExcel(Rec);
                end;
            }
        }
    }
}

// ...existing code...

// ...existing code...

// ...existing code...

pageextension 50141 "Blanket PO Lines Ext" extends "Blanket Purchase Order Subform"
{
    layout
    {
        addafter("Line Amount")
        {
            field(InvoicedAmountFromBPO; Rec."Invoiced Amount from BPO")
            {
                Caption = 'Invoiced Amount from BPO';
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
}
