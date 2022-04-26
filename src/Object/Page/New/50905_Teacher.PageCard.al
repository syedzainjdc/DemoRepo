page 50905 "Teacher Card"
{
    PageType = Card;
    SourceTable = Teacher;
    Caption = 'Teacher';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }

                field("Work Phone No."; Rec."Work Phone No.")
                {
                    ApplicationArea = All;

                }


                field("Personal Phone No."; Rec."Personal Phone No.")
                {
                    ApplicationArea = All;
                }

                field("Website"; Rec."Website Url")
                {
                    ApplicationArea = All;
                }

                field("E-mail"; Rec."E-mail")
                {
                    ApplicationArea = All;
                }

                field("Active"; Rec.Active)
                {
                    ApplicationArea = All;
                }
            }

            part(ClassSchedules; "Calss Schedule Sub Form")
            {
                SubPageLink = "Teacher ID" = field(ID);
                ApplicationArea = All;
            }
        }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = All;

    //             trigger OnAction()
    //             begin

    //             end;
    //         }
    //     }
    // }

    var
        myInt: Integer;
}