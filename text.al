table 90101 Employe
{
    Caption = 'Employee Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Emp ID"; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; EmpName; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Department; Option)
        {
            OptionMembers = CSE,IT,BME,Mech;
            DataClassification = ToBeClassified;
        }
        field(4; DOJ; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Salary; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Customer No."; Code[10])
        {

            Caption = 'Customer No.';
            TableRelation = Customer."No.";
        }

    }

    keys
    {
        key(Key1; "Emp ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;


    trigger OnInsert()
    begin
        Message('Data inserted');
    end;

    trigger OnModify()
    begin
        Message('Data Modified');
    end;

    trigger OnDelete()
    begin
        Message('Data Deleted');
    end;




}