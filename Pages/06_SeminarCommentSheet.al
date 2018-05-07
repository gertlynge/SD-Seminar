page 123456706 "Seminar Comment Sheet"
// CSD1.00 - GSL FinDroids
// Chapter 5 - Lab 2-2
{
    Caption = 'Seminar Comment Sheet';
    PageType = List;
    SourceTable = "Seminar Comment Line";

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
