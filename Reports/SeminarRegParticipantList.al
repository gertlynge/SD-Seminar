report 123456701 SeminarRegParticipantList
{
    UsageCategory = ReportsAndAnalysis;
    Caption = 'Seminar Reg. Participant List';
    DefaultLayout=RDLC;

    dataset
    {
        dataitem(SeminarRegistrationHeader;"Seminar Registration Header")
        {
            DataItemTableView=sorting("No.");
            RequestFilterFields="No.","Seminar No.";

            column(No;"No.")
            {
                IncludeCaption = true;
            }
            column(SeminarNo;"Seminar No.")
            {
                IncludeCaption = true;
            }
            column(SeminarName;"Seminar Name")
            {
                IncludeCaption = true;
            }
            column(StartingDate;"Starting Date")
            {
                IncludeCaption = true;
            }
            column(Duration;Duration)
            {
                IncludeCaption = true;
            }
            column(InstructorName;"Instructor Name")
            {
                IncludeCaption = true;
            }
            column(RoomName;"Room Name")
            {
                IncludeCaption = true;
            }
        

            dataitem(SeminarRegistrationLine;"Seminar Registration Line")
            {
                DataItemTableView=sorting("Document No.","Line No.");
                DataItemLink="Document No."=field("No.");

                column(BilltoCustomerNo;"Bill-to Customer No.")
                {
                    IncludeCaption = true;
                }
                column(ParticipantContactNo;"Participant Contact No.")
                {
                    IncludeCaption = true;
                }
                column(ParticipantName;"Participant Name")
                {
                    IncludeCaption = true;
                }         
            }
        }
        dataitem(CompanyInformation;"Company Information")
        {
            column(CompanyName;Name)
            {
                IncludeCaption = true;
            }
        }
    }

    labels
    {
        SeminarRegistrationHeaderHeaderCap = 'Seminar Registration Header';
    }
    

}