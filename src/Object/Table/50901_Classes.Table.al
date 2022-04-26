table 50901 Classes
{
    DataClassification = ToBeClassified;
    Caption = 'Class';
    Description = 'A table which contains all the information of classes';

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }

        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(3; Active; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(4; Mode; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "","Live","On-Demand";
            OptionCaption = ' ,Live,On-Demand';
        }

        field(5; Fee; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}