page 50100 "IVAEXT Val. Cond. (Cust. Val.)"
{
    PageType = ListPlus;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "IVA Valuation Condition";

    // Run this Page as a Level Page for your Customer Valuation Type, add Fields/Filters and so on as you see fit.
    layout
    {
        area(Content)
        {
            group(GroupGeneral)
            {
                field(IVAEXTCustomizedFieldA; "IVAEXT Customized Field A")
                {
                    ApplicationArea = All;
                }
                field(IVAEXTCustomizedFieldB; "IVAEXT Customized Field B")
                {
                    ApplicationArea = All;
                }
            }
            part(ValuationConditionLine; "IVAEXT Val. Cond. (CustVal) SF")
            {
                ApplicationArea = All;
                SubPageLink = "Valuation Type" = field("Valuation Type"),
                              "Valuation Code" = field(Code);
            }
        }
    }
}