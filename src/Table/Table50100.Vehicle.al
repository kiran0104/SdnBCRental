table 50100 "SDN Vehicle"
{
    Caption = 'Vehicle';
    DataClassification = CustomerContent;
    DrillDownPageId = "SDN Vehicle List";
    LookupPageId = "SDN Vehicle List";

    fields
    {
        // ── Vehicle Info ──────────────────────────────────────────
        field(1; "Vehicle Registration No."; Code[20])
        {
            Caption = 'Vehicle Registration No.';
            NotBlank = true;
            DataClassification = CustomerContent;
        }
        field(2; "Vehicle Type"; Enum "SDN Vehicle Type")
        {
            Caption = 'Vehicle Type';
            DataClassification = CustomerContent;
        }
        field(3; "Make / Brand"; Text[50])
        {
            Caption = 'Make / Brand';
            DataClassification = CustomerContent;
        }
        field(4; "Model"; Text[50])
        {
            Caption = 'Model';
            DataClassification = CustomerContent;
        }
        field(5; "Year of Manufacture"; Integer)
        {
            Caption = 'Year of Manufacture';
            MinValue = 1900;
            DataClassification = CustomerContent;
        }
        field(6; "Color"; Text[30])
        {
            Caption = 'Color';
            DataClassification = CustomerContent;
        }
        field(7; "Engine No."; Code[30])
        {
            Caption = 'Engine No.';
            DataClassification = CustomerContent;
        }
        field(8; "Chassis No."; Code[30])
        {
            Caption = 'Chassis No.';
            DataClassification = CustomerContent;
        }
        field(9; "Fuel Type"; Enum "SDN Vehicle Fuel Type")
        {
            Caption = 'Fuel Type';
            DataClassification = CustomerContent;
        }
        field(10; "Purchase Date"; Date)
        {
            Caption = 'Purchase Date';
            DataClassification = CustomerContent;
        }
        field(11; "Purchase Price"; Decimal)
        {
            Caption = 'Purchase Price';
            MinValue = 0;
            DataClassification = CustomerContent;
        }
        field(12; "Status"; Enum "SDN Vehicle Status")
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
        }
        field(13; "Remarks"; Text[250])
        {
            Caption = 'Remarks';
            DataClassification = CustomerContent;
        }
        field(14; "Rent Amount per Hour"; Decimal)
        {
            Caption = 'Rent Amount per Hour';
            MinValue = 0;
            DataClassification = CustomerContent;
        }
        field(15; Image; Media)
        {
            Caption = 'Image';
            DataClassification = CustomerContent;
        }

        // ── Owner Info ────────────────────────────────────────────
        field(20; "Ownership Type"; Enum "SDN Vehicle Ownership Type")
        {
            Caption = 'Ownership Type';
            DataClassification = CustomerContent;
        }
        field(21; "Owner Name"; Text[100])
        {
            Caption = 'Owner Name';
            DataClassification = CustomerContent;
        }
        field(22; "Owner Contact No."; Text[20])
        {
            Caption = 'Owner Contact No.';
            DataClassification = CustomerContent;
        }
        field(23; "Owner Email"; Text[80])
        {
            Caption = 'Owner Email';
            DataClassification = CustomerContent;
        }
        field(24; "Owner Address"; Text[250])
        {
            Caption = 'Owner Address';
            DataClassification = CustomerContent;
        }
        field(25; "Owner ID / Aadhaar No."; Code[20])
        {
            Caption = 'Owner ID / Aadhaar No.';
            DataClassification = CustomerContent;
        }
        field(26; "Owner City"; Text[50])
        {
            Caption = 'Owner City';
            DataClassification = CustomerContent;
        }
        field(27; "Owner State"; Text[50])
        {
            Caption = 'Owner State';
            DataClassification = CustomerContent;
        }
        field(28; "Owner Post Code"; Code[20])
        {
            Caption = 'Owner Post Code';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Vehicle Registration No.")
        {
            Clustered = true;
        }
        key(K1; "Vehicle Type", "Status") { }
    }

    //Create a new procedure to get the vehicle ID
    local procedure GetVehicleId(): Code[2]
    var
        myInt: Integer;
    begin
        exit("Vehicle Registration No.");
    end;
}
