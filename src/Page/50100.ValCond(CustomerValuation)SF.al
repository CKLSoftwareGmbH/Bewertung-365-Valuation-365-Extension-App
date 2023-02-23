page 50101 "IVAEXT Val. Cond. (CustVal) SF"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "IVA Valuation Condition Level";
    // Run this Page as a Level Page for your Customer Valuation Type, add Fields/Filters and so on as you see fit.
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(IVAEXTCustomizedFieldA; Rec."IVAEXT Customized Field A")
                {
                    ApplicationArea = All;
                    ToolTip = 'Add Description';
                }
                field(IVAEXTCustomizedFieldB; Rec."IVAEXT Customized Field B")
                {
                    ApplicationArea = All;
                    ToolTip = 'Add Description';
                }
            }
        }
    }
}