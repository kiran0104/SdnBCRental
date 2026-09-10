table 50101 "SDN Vehicle Maintenance"
{
    Caption = 'Vehicle Maintenance';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Maintenance No."; Integer)
        {
            Caption = 'Maintenance No.';
            AutoIncrement = true;
            DataClassification = CustomerContent;
        }
        field(2; "Vehicle Registration No."; Code[20])
        {
            Caption = 'Vehicle Registration No.';
            DataClassification = CustomerContent;
            TableRelation = "SDN Vehicle"."Vehicle Registration No.";
        }
        field(3; "Maintenance Date"; Date)
        {
            Caption = 'Maintenance Date';
            DataClassification = CustomerContent;
        }
        field(4; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(5; "Service Provider"; Text[100])
        {
            Caption = 'Service Provider';
            DataClassification = CustomerContent;
        }
        field(6; Cost; Decimal)
        {
            Caption = 'Cost';
            MinValue = 0;
            DataClassification = CustomerContent;
        }
        field(7; "Next Service Date"; Date)
        {
            Caption = 'Next Service Date';
            DataClassification = CustomerContent;
        }
        field(8; Remarks; Text[250])
        {
            Caption = 'Remarks';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Maintenance No.")
        {
            Clustered = true;
        }
        key(K1; "Vehicle Registration No.", "Maintenance Date")
        {
        }
    }
}