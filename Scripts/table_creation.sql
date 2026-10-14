/*
                   >>BRONZE LAYER<<
this script will run to create the table for the bronze layer of the maintenance data warehouse
>>RAW data without any alteration or cleaning prcedure

**Note**
running this script will drop the whole table and create it again if it does not exist
*/
IF OBJECT_ID('bronze_reactive_maintenance','U') IS NOT NULL
DROP TABLE IF EXISTS bronze_reactive_maintenance;
CREATE TABLE bronze_reactive_maintenance(
   category_1          NVARCHAR(100),
    category_2          NVARCHAR(100),
    category_3          NVARCHAR(100),
    category_4          NVARCHAR(100),
    ticket_number       NVARCHAR(50),
    created_date        DATE,
    source_id           NVARCHAR(100),
    app_name            NVARCHAR(100),
    priority            NVARCHAR(50),
    status              NVARCHAR(100),
    assigned_to_name    NVARCHAR(200),
    tenant_bp           NVARCHAR(50),
    tenant_name         NVARCHAR(300),
    dsp_name            NVARCHAR(200),
    functional_location NVARCHAR(200),
    created_by          NVARCHAR(100),
    status_date         DATE,
    building            NVARCHAR(100),
    last_notes_date     DATE,
    problem_location    NVARCHAR(500),
    dwh_load_date       DATETIME DEFAULT CURRENT_TIMESTAMP   -- audit column
);
