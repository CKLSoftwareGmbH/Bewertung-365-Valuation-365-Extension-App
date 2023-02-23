codeunit 50100 "IVAEXT Val. Condition Handler"
{
    [EventSubscriber(ObjectType::Table, Database::"IVA Valuation Condition", 'OnBeforeShowLevels', '', true, true)]
    local procedure OnBeforeShowLevelValuationCondition(var Rec: Record "IVA Valuation Condition"; var IsHanled: Boolean)
    begin
        if Rec."Valuation Type" = Rec."Valuation Type"::"IVAEXT Customer Valuation" then begin
            IsHanled := true;
            Page.RunModal(Page::"IVAEXT Val. Cond. (Cust. Val.)", Rec);
        end;
    end;
}