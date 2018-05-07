pageextension 123456701 CSD_ResourceListExt extends "Resource List"
// CSD1.00 - GSL FinDroids
// Chapter 5 - Lab 1-3
// Changed property on the Type field
// Added new fields:
// - Internal/External
// - Maximum Participants
// Added code to OnOpenPage trigger
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }

        addafter(Type)
        {
            field("Resource Type";"CSD_Resource Type")
            {

            }

            field("Maximum Participants";"CSD_Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }
        
    trigger OnOpenPage()
    begin
        FilterGroup(3);
        ShowType := (GetFilter(Type)='');
        ShowMaxField := (GetFilter(Type) = format(Type::Machine));
        FilterGroup(0);
    end;

    var
        [InDataSet]
        ShowMaxField : Boolean;
        [InDataSet]
        Showtype : Boolean;
}