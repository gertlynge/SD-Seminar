tableextension 123456700 ResourceExt extends Resource
// CSD1.00 - GSL FinDroids
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                Rec.TestField("Unit Cost");
            end;
        }

        field(123456701;"CSD_Resource Type";Option)
        {
            Caption='Resource Type';
            OptionMembers="Internal","External";
            OptionCaption='Internal,External';
            DataClassification = ToBeClassified;
        }

        field(123456702;"CSD_Maximum Participants";Integer)
        {
            Caption='Maximum Participants';
            DataClassification = ToBeClassified;
        }

        field(123456703;"CSD_Quantity Per Day";Decimal)
        {
            Caption = 'Quantity Per Day';
            DataClassification = ToBeClassified;
        }
    }
}