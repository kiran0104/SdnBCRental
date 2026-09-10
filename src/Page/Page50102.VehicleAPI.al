page 50102 "SDN Vehicle API"
{
    PageType = API;
    Caption = 'Vehicle API';
    APIPublisher = 'sdnmcp';
    APIGroup = 'rental';
    APIVersion = 'v1.0';
    EntityName = 'vehicle';
    EntitySetName = 'vehicles';
    SourceTable = "SDN Vehicle";
    DelayedInsert = true;
    ODataKeyFields = "Vehicle Registration No.";

    layout
    {
        area(Content)
        {
            repeater(VehicleData)
            {
                // ── Vehicle Info ──────────────────────────────────────
                field(vehicleRegistrationNo; Rec."Vehicle Registration No.")
                {
                    Caption = 'vehicleRegistrationNo';
                    ApplicationArea = All;
                }
                field(vehicleType; Rec."Vehicle Type")
                {
                    Caption = 'vehicleType';
                    ApplicationArea = All;
                }
                field(makeBrand; Rec."Make / Brand")
                {
                    Caption = 'makeBrand';
                    ApplicationArea = All;
                }
                field(model; Rec.Model)
                {
                    Caption = 'model';
                    ApplicationArea = All;
                }
                field(yearOfManufacture; Rec."Year of Manufacture")
                {
                    Caption = 'yearOfManufacture';
                    ApplicationArea = All;
                }
                field(color; Rec.Color)
                {
                    Caption = 'color';
                    ApplicationArea = All;
                }
                field(engineNo; Rec."Engine No.")
                {
                    Caption = 'engineNo';
                    ApplicationArea = All;
                }
                field(chassisNo; Rec."Chassis No.")
                {
                    Caption = 'chassisNo';
                    ApplicationArea = All;
                }
                field(fuelType; Rec."Fuel Type")
                {
                    Caption = 'fuelType';
                    ApplicationArea = All;
                }
                field(purchaseDate; Rec."Purchase Date")
                {
                    Caption = 'purchaseDate';
                    ApplicationArea = All;
                }
                field(purchasePrice; Rec."Purchase Price")
                {
                    Caption = 'purchasePrice';
                    ApplicationArea = All;
                }
                field(rentAmountPerHour; Rec."Rent Amount per Hour")
                {
                    Caption = 'rentAmountPerHour';
                    ApplicationArea = All;
                }
                field(status; Rec.Status)
                {
                    Caption = 'status';
                    ApplicationArea = All;
                }
                field(remarks; Rec.Remarks)
                {
                    Caption = 'remarks';
                    ApplicationArea = All;
                }

                // ── Owner Info ────────────────────────────────────────
                field(ownershipType; Rec."Ownership Type")
                {
                    Caption = 'ownershipType';
                    ApplicationArea = All;
                }
                field(ownerName; Rec."Owner Name")
                {
                    Caption = 'ownerName';
                    ApplicationArea = All;
                }
                field(ownerContactNo; Rec."Owner Contact No.")
                {
                    Caption = 'ownerContactNo';
                    ApplicationArea = All;
                }
                field(ownerEmail; Rec."Owner Email")
                {
                    Caption = 'ownerEmail';
                    ApplicationArea = All;
                }
                field(ownerIdAadhaarNo; Rec."Owner ID / Aadhaar No.")
                {
                    Caption = 'ownerIdAadhaarNo';
                    ApplicationArea = All;
                }
                field(ownerAddress; Rec."Owner Address")
                {
                    Caption = 'ownerAddress';
                    ApplicationArea = All;
                }
                field(ownerCity; Rec."Owner City")
                {
                    Caption = 'ownerCity';
                    ApplicationArea = All;
                }
                field(ownerState; Rec."Owner State")
                {
                    Caption = 'ownerState';
                    ApplicationArea = All;
                }
                field(ownerPostCode; Rec."Owner Post Code")
                {
                    Caption = 'ownerPostCode';
                    ApplicationArea = All;
                }
            }
        }
    }
}
