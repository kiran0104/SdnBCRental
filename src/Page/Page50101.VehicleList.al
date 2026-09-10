page 50101 "SDN Vehicle List"
{
    Caption = 'Vehicles';
    PageType = List;
    SourceTable = "SDN Vehicle";
    UsageCategory = Lists;
    ApplicationArea = All;
    CardPageId = "SDN Vehicle Card";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(VehicleLines)
            {
                field("Vehicle Registration No."; Rec."Vehicle Registration No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the registration number of the vehicle.';
                }
                field("Vehicle Type"; Rec."Vehicle Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of the vehicle.';
                }
                field("Make / Brand"; Rec."Make / Brand")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the make or brand of the vehicle.';
                }
                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the model of the vehicle.';
                }
                field("Year of Manufacture"; Rec."Year of Manufacture")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the year of manufacture.';
                }
                field("Fuel Type"; Rec."Fuel Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the fuel type.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the current rental status of the vehicle.';
                }
                field("Rent Amount per KM"; Rec."Rent Amount per Hour")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the rental charge per hour for this vehicle.';
                }
                field("Ownership Type"; Rec."Ownership Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the vehicle is Company Owned or Customer Owned.';
                }
                field("Owner Name"; Rec."Owner Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the owner (for customer-owned vehicles).';
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
        area(Processing)
        {
            action(NewVehicle)
            {
                Caption = 'New Vehicle';
                RunObject = page "SDN Vehicle Card";
                RunPageMode = Create;
                ApplicationArea = All;
                Image = New;
                ToolTip = 'Opens the vehicle card to register a new vehicle.';
            }
        }
        area(Promoted)
        {
            actionref(NewVehicle_Promoted; NewVehicle) { }
        }
    }
}
