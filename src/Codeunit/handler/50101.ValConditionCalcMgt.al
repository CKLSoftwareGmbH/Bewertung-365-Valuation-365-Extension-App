codeunit 50101 "IVAEXT ValCondCalcMgt Handler"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"IVA Val. Condition Calc. Mgt.", 'OnBeforeCalcInvtValueRevalued', '', true, true)]
    local procedure OnBeforeCalcInvtValueRevalued(var ItemValPlanEntry: Record "IVA Item Valuation Plan Entry"; var IsHandled: Boolean)
    begin
        if ItemValPlanEntry."Valuation Type" = ItemValPlanEntry."Valuation Type"::"IVAEXT Customer Valuation" then begin
            //Run the Necessary Valuation Calculations at this point and assign them to your Item Valuation Plan Entry
            IsHandled := true;
            ItemValPlanEntry.Description := ItemValPlanEntry.Description;
        end;
    end;
}