page 50100 "SDN Vehicle Card"
{
    Caption = 'Vehicle Card';
    PageType = Card;
    SourceTable = "SDN Vehicle";
    UsageCategory = Documents;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            // ── Vehicle Info ──────────────────────────────────────
            group(VehicleInfo)
            {
                Caption = 'Vehicle Info';

                field("Vehicle Registration No."; Rec."Vehicle Registration No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the registration number of the vehicle, used as the unique identifier.';
                }
                field("Vehicle Type"; Rec."Vehicle Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the vehicle is a Two Wheeler, Four Wheeler, or Multi Axle vehicle.';
                }
                field("Make / Brand"; Rec."Make / Brand")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the make or brand of the vehicle (e.g., Honda, Toyota, Tata).';
                }
                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the model of the vehicle.';
                }
                field("Year of Manufacture"; Rec."Year of Manufacture")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the year in which the vehicle was manufactured.';
                }
                field(Color; Rec.Color)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the color of the vehicle.';
                }
                field("Fuel Type"; Rec."Fuel Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the fuel type of the vehicle (Petrol, Diesel, Electric, CNG, or Hybrid).';
                }
                field("Engine No."; Rec."Engine No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the engine number of the vehicle.';
                }
                field("Chassis No."; Rec."Chassis No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the chassis number of the vehicle.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the current rental status of the vehicle.';
                }
                field("Purchase Date"; Rec."Purchase Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date on which the vehicle was purchased.';
                }
                field("Purchase Price"; Rec."Purchase Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the purchase price of the vehicle.';
                }
                field("Rent Amount per KM"; Rec."Rent Amount per Hour")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the rental charge per hour for this vehicle.';
                }
                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                    MultiLine = true;
                    ToolTip = 'Specifies any additional remarks about the vehicle.';
                }
                field(Image; Rec.Image)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the image of the vehicle.';
                }
            }

            // ── Owner Info ────────────────────────────────────────
            group(OwnerInfo)
            {
                Caption = 'Owner Info';

                field("Ownership Type"; Rec."Ownership Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the vehicle is company owned, leased, or provided by an external customer for rental.';
                }
                field("Owner Name"; Rec."Owner Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the full name of the vehicle owner.';
                    Enabled = Rec."Ownership Type" = Rec."Ownership Type"::"Customer Owned";
                }
                field("Owner Contact No."; Rec."Owner Contact No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the contact number of the vehicle owner.';
                    Enabled = Rec."Ownership Type" = Rec."Ownership Type"::"Customer Owned";
                }
                field("Owner Email"; Rec."Owner Email")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the email address of the vehicle owner.';
                    Enabled = Rec."Ownership Type" = Rec."Ownership Type"::"Customer Owned";
                }
                field("Owner ID / Aadhaar No."; Rec."Owner ID / Aadhaar No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ID or Aadhaar number of the vehicle owner for identification purposes.';
                    Enabled = Rec."Ownership Type" = Rec."Ownership Type"::"Customer Owned";
                }
                field("Owner Address"; Rec."Owner Address")
                {
                    ApplicationArea = All;
                    MultiLine = true;
                    ToolTip = 'Specifies the address of the vehicle owner.';
                    Enabled = Rec."Ownership Type" = Rec."Ownership Type"::"Customer Owned";
                }
                field("Owner City"; Rec."Owner City")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the city of the vehicle owner.';
                    Enabled = Rec."Ownership Type" = Rec."Ownership Type"::"Customer Owned";
                }
                field("Owner State"; Rec."Owner State")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the state of the vehicle owner.';
                    Enabled = Rec."Ownership Type" = Rec."Ownership Type"::"Customer Owned";
                }
                field("Owner Post Code"; Rec."Owner Post Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the postal code of the vehicle owner.';
                    Enabled = Rec."Ownership Type" = Rec."Ownership Type"::"Customer Owned";
                }
            }
        }

        area(FactBoxes)
        {
            systempart(Links; Links)
            {
                ApplicationArea = RecordLinks;
            }
            systempart(Notes; Notes)
            {
                ApplicationArea = Notes;
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(VehicleList)
            {
                Caption = 'Vehicle List';
                RunObject = page "SDN Vehicle List";
                ApplicationArea = All;
                Image = List;
                ToolTip = 'Opens the list of all vehicles.';
            }
        }
        area(Promoted)
        {
            actionref(VehicleList_Promoted; VehicleList) { }
        }
    }
}
