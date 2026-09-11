page 50104 "SDN Vehicle Maintenance List"
{
    Caption = 'Vehicle Maintenance List';
    PageType = List;
    SourceTable = "SDN Vehicle Maintenance";
    UsageCategory = Lists;
    ApplicationArea = All;
    CardPageId = "SDN Vehicle Maintenance Card";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(MaintenanceLines)
            {
                field("Maintenance No."; Rec."Maintenance No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the maintenance entry number.';
                }
                field("Vehicle Registration No."; Rec."Vehicle Registration No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the registration number of the vehicle.';
                }
                field("Maintenance Date"; Rec."Maintenance Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date when the repair or maintenance work is recorded.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the repair or maintenance work details.';
                }
                field("Service Provider"; Rec."Service Provider")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the workshop or service provider handling the repair work.';
                }
                field(Cost; Rec.Cost)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the cost of the repair or maintenance work.';
                }
                field("Next Service Date"; Rec."Next Service Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the due date for the next repair or service.';
                }
                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies any additional notes about the vehicle maintenance.';
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
            action(NewMaintenance)
            {
                Caption = 'New Maintenance';
                RunObject = page "SDN Vehicle Maintenance Card";
                RunPageMode = Create;
                ApplicationArea = All;
                Image = New;
                ToolTip = 'Opens the vehicle maintenance card to add a new repair or maintenance entry.';
            }
        }
        area(Promoted)
        {
            actionref(NewMaintenance_Promoted; NewMaintenance) { }
        }
    }
}