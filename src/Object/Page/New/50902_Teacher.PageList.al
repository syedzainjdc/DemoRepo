page 50902 "Teacher List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Teacher;
    CardPageId = "Teacher Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;

                }

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
        }
        area(Factboxes)
        {

        }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = All;

    //             trigger OnAction();
    //             begin

    //             end;
    //         }
    //     }
    // }
}