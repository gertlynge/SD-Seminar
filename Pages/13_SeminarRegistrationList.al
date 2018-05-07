page 123456713 "Seminar Registration List"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 3
    //     - Created new page

    Caption = 'Seminar Registration List';
    CardPageID = "Seminar Registration";
    Editable = false;
    PageType = List;
    SourceTable = "Seminar Registration Header";
    UsageCategory=lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {
                    Caption = 'No.';
                }
                field("Starting Date";"Starting Date")
                {
                    Caption = 'Staring Date';
                }
                field("Seminar No.";"Seminar No.")
                {
                    Caption = 'Seminar No.';
                }
                field("Seminar Name";"Seminar Name")
                {
                    Caption = 'Seminar Name';
                }
                field(Status;Status)
                {
                    Caption = 'Status';
                }
                field(Duration;Duration)
                {
                    Caption = 'Duration';
                }
                field("Maximum Participants";"Maximum Participants")
                {
                    Caption = 'Maximum Participants';
                }
                field("Room Resource No.";"Room Resource No.")
                {
                    Caption = 'Room Resource No.';
                }
            }
        }
        area(factboxes)
        {
            systempart("Links";Links)
            {
            }
            systempart("Notes";Notes)
            {
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Seminar Registration")
            {
                Caption = '&Seminar Registration';
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = Comment;
                    RunObject = Page 123456706;
                    RunPageLink = "No."=Field("No.");
                    RunPageView = where("Table Name"=const("Seminar Registration"));
                }
                action("&Charges")
                {
                    Caption = '&Charges';
                    Image = Costs;
                    RunObject = Page 123456724;
                    RunPageLink = "Document No."=Field("No.");
                }
            }
        }
    }
}

