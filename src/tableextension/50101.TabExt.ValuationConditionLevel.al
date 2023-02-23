tableextension 50101 "IVAEXT Val. Cond. Level Ext." extends "IVA Valuation Condition Level"
{
    //Add the fields you need for your Valuation Levels or add simple Information to make the background calculations visible on the Front End
    fields
    {
        field(50100; "IVAEXT Customized Field A"; Blob)
        {
            DataClassification = CustomerContent;
        }
        field(50101; "IVAEXT Customized Field B"; Blob)
        {
            DataClassification = CustomerContent;
        }
    }

}