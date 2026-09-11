page 50103 "SDN Vehicle Maintenance Card"
{
    Caption = 'Vehicle Maintenance Card';
    PageType = Card;
    SourceTable = "SDN Vehicle Maintenance";
    UsageCategory = Documents;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Maintenance No."; Rec."Maintenance No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the maintenance entry number.';
                }
                field("Vehicle Registration No."; Rec."Vehicle Registration No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the registration number of the vehicle that requires maintenance.';
                }
                field("Maintenance Date"; Rec."Maintenance Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date when the repair or maintenance work is recorded.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    MultiLine = true;
                    ToolTip = 'Specifies the repair or maintenance work details.';
                }
                field("Next Service Date"; Rec."Next Service Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the due date for the next repair or service.';
                }
            }

            group(ServiceDetails)
            {
                Caption = 'Service Details';

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
                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                    MultiLine = true;
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
        area(Navigation)
        {
            action(MaintenanceList)
            {
                Caption = 'Vehicle Maintenance List';
                RunObject = page "SDN Vehicle Maintenance List";
                ApplicationArea = All;
                Image = List;
                ToolTip = 'Opens the list of vehicle maintenance entries.';
            }
        }
        area(Promoted)
        {
            actionref(MaintenanceList_Promoted; MaintenanceList) { }
        }
    }
}