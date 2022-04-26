table 50905 "Student Registration"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Student;
        }

        field(2; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }

        field(3; "Class ID"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Classes;
            trigger OnValidate()
            var
                recClass: Record Classes;
            begin
                if xRec."Class ID" <> Rec."Class ID" then begin
                    recClass.Reset();
                    if recClass.Get("Class ID") then begin
                        "Class Name" := recClass.Name;
                        "Class Mode" := recClass.Mode;
                    end;
                end;
            end;

        }

        field(4; "Class Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = Classes.Name;
            Editable = false;

        }

        field(5; "Class Mode"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "","Live","On-Demand";
            OptionCaption = ' ,Live,On-Demand';
            Editable = false;
            TableRelation = Classes.Mode;
        }
    }

    keys
    {
        key(Key1; "Student ID", "Line No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}