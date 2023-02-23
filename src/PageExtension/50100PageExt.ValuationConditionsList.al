pageextension 50100 "IVAEXT Val. Conditions List" extends "IVA Valuation Conditions List"
{
    layout
    {
        modify("Valuation Type")
        {
            Visible = false;
        }
        addafter("Valuation Type")
        {
            field(IVAEXTValuationType; Rec."Valuation Type")
            {
                ToolTip = 'The Valuation type determines the criteria according to which the devaluation is to take place: Range, Leaving, Expiration Date, Age structure, Location type, Currency, Lowest value, Range periods or Leaving periods. Depending on the Valuation type, further parameters must be defined in the Valuation condition levels.';
                ApplicationArea = All;
                //There are Enum Values (0 and 10) we do not wish to show the customer, this is why in order to show your extended Value
                //you must first make our original Field not Visible and create your own field with extended ValuesAllowed Property.
                ValuesAllowed = 1, 2, 3, 4, 5, 6, 7, 8, 9, 50100;
            }
        }
    }
}