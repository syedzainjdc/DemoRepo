page 50906 "Calss Schedule Sub Form"
{
    PageType = ListPart;
    SourceTable = ClassSchedule;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater("Class Schedule Line")
            {
                Caption = 'Class Schedule Line';

                // field("Teacher ID"; Rec."Teacher ID")
                // {
                //     ApplicationArea = All;
                // }

                field("Class ID"; Rec."Class ID")
                {
                    ApplicationArea = All;
                }


                field("Class Name"; Rec."Class Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                // field("Line No."; Rec."Line No.")
                // {
                //     ApplicationArea = All;
                // }

                field("Schedule Date"; Rec."Schedule Date")
                {
                    ApplicationArea = All;
                }

                field("Schedule Day"; Rec."Schedule Day")
                {
                    ApplicationArea = All;
                }

                field("Schedule Start Time"; Rec."Schedule Start Time")
                {
                    ApplicationArea = All;
                }

                field("Schedule End Time"; Rec."Schedule End Time")
                {
                    ApplicationArea = All;
                }

                field(Duration; Rec.Duration)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        Rec."Schedule End Time" := Rec."Schedule Start Time" + Rec.Duration * 3600000;
                    end;
                }

                field("Teacher Name"; Rec."Teacher Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
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