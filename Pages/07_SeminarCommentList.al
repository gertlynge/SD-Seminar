page 123456707 "Seminar Comment List"
// CSD1.00 - GSL FinDroids
// Chapter 5 - Lab 2-2
{
    Caption = 'Seminar Comment List';
    PageType = List;
    SourceTable = "Seminar Comment Line";
    Editable=false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Date)
                {
                }
                field(Code;Code)
                {
                    Visible=false;
                }
                field(Comment;Comment)
                {    
                }
            }
        }
    }
}
