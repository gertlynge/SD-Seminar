pageextension 123456700 CSD_ResourceCardExt extends "Resource Card"
// CSD1.00 - GSL FinDroids
// Chapter 5 - Lab 1-2
// Added new fields:
// - Internal/External
// - Maximum Participants
// Added new FastTab
// Added code to OnOpenPage trigger
{
    layout
    {
        addlast(General)
        {
            field("Resource Type";"CSD_Resource Type")
            {
                
            }

            field("Quantity Per Day";"CSD_Quantity Per Day")
            {

            }
        }

        addafter("Personal Data")
        {
            group(Room)
            {
                field("Maximum Participants";"CSD_Maximum Participants")
                {
                    Visible = ShowMaxField;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(false);
    end;

    var
        [InDataSet]
        ShowMaxField : Boolean;
}