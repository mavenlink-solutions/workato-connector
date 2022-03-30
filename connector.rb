


{
  title: "Mavenlink",

  # API key authentication example. See more examples at https://docs.workato.com/developing-connectors/sdk/guides/authentication.html
  connection: {
    fields: [
      {
        name: "api_key",
        hint: "You can find your API key " \
          "<a href='https://app.mavenlink.com/oauth/applications' " \
          "target='_blank'>here</a>"
      }
    ],

    authorization: {
      type: "custom_auth", 

      # Calendly uses header auth (X-Token: <api key>)
      apply: lambda do |connection|
        headers("Authorization": "Bearer #{connection["api_key"]}")
      end
    },

    base_uri: lambda do
      "https://api.mavenlink.com/api/v1/"
    end
  },



  test: lambda do |_connection|
    get("users/me")
  end,



  object_definitions: {
    #  Object definitions can be referenced by any input or output fields in actions/triggers.
    #  Use it to keep your code DRY. Possible arguments - connection, config_fields
    #  See more at https://docs.workato.com/developing-connectors/sdk/sdk-reference/object_definitions.html
    workspaces: {
      fields: lambda do |_connection, _config_fields|
     [
          { 
            name: "workspaces",
            type: "array",
            properties: [
              {
                "control_type": "text",
                "label": "Title",
                "type": "string",
                "name": "title"
              },
              {
                "control_type": "number",
                "label": "Account ID",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "account_id"
              },
              {
                "control_type": "text",
                "label": "Archived",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Archived",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "archived"
                },
                "type": "boolean",
                "name": "archived"
              },
              {
                "control_type": "text",
                "label": "Description",
                "type": "string",
                "name": "description"
              },
              {
                "control_type": "text",
                "label": "Due date",
                "type": "string",
                "name": "due_date"
              },
              {
                "control_type": "text",
                "label": "Effective due date",
                "type": "string",
                "name": "effective_due_date"
              },
              {
                "control_type": "text",
                "label": "Start date",
                "type": "string",
                "name": "start_date"
              },
              {
                "control_type": "text",
                "label": "Budgeted",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Budgeted",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "budgeted"
                },
                "type": "boolean",
                "name": "budgeted"
              },
              {
                "control_type": "text",
                "label": "Change orders enabled",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Change orders enabled",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "change_orders_enabled"
                },
                "type": "boolean",
                "name": "change_orders_enabled"
              },
              {
                "control_type": "text",
                "label": "Updated at",
                "render_input": "date_time_conversion",
                "parse_output": "date_time_conversion",
                "type": "date_time",
                "name": "updated_at"
              },
              {
                "control_type": "text",
                "label": "Created at",
                "render_input": "date_time_conversion",
                "parse_output": "date_time_conversion",
                "type": "date_time",
                "name": "created_at"
              },
              {
                "control_type": "text",
                "label": "Consultant role name",
                "type": "string",
                "name": "consultant_role_name"
              },
              {
                "control_type": "text",
                "label": "Client role name",
                "type": "string",
                "name": "client_role_name"
              },
              {
                "control_type": "number",
                "label": "Percentage complete",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "percentage_complete"
              },
              {
                "control_type": "text",
                "label": "Access level",
                "type": "string",
                "name": "access_level"
              },
              {
                "control_type": "text",
                "label": "Exclude archived stories percent complete",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Exclude archived stories percent complete",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "exclude_archived_stories_percent_complete"
                },
                "type": "boolean",
                "name": "exclude_archived_stories_percent_complete"
              },
              {
                "control_type": "text",
                "label": "Show nonbillable time on invoices",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Show nonbillable time on invoices",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "show_nonbillable_time_on_invoices"
                },
                "type": "boolean",
                "name": "show_nonbillable_time_on_invoices"
              },
              {
                "control_type": "text",
                "label": "Can create line items",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Can create line items",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "can_create_line_items"
                },
                "type": "boolean",
                "name": "can_create_line_items"
              },
              {
                "control_type": "text",
                "label": "Default rate",
                "type": "string",
                "name": "default_rate"
              },
              {
                "control_type": "text",
                "label": "Currency",
                "type": "string",
                "name": "currency"
              },
              {
                "control_type": "text",
                "label": "Currency symbol",
                "type": "string",
                "name": "currency_symbol"
              },
              {
                "control_type": "number",
                "label": "Currency base unit",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "currency_base_unit"
              },
              {
                "control_type": "text",
                "label": "Can invite",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Can invite",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "can_invite"
                },
                "type": "boolean",
                "name": "can_invite"
              },
              {
                "control_type": "text",
                "label": "Has budget access",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Has budget access",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "has_budget_access"
                },
                "type": "boolean",
                "name": "has_budget_access"
              },
              {
                "control_type": "text",
                "label": "Revenue recognition method",
                "type": "string",
                "name": "revenue_recognition_method"
              },
              {
                "control_type": "text",
                "label": "Tasks default non billable",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Tasks default non billable",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "tasks_default_non_billable"
                },
                "type": "boolean",
                "name": "tasks_default_non_billable"
              },
              {
                "control_type": "number",
                "label": "Rate card ID",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "rate_card_id"
              },
              {
                "control_type": "text",
                "label": "Workspace invoice preference ID",
                "type": "string",
                "name": "workspace_invoice_preference_id"
              },
              {
                "control_type": "text",
                "label": "Posts require privacy decision",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Posts require privacy decision",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "posts_require_privacy_decision"
                },
                "type": "boolean",
                "name": "posts_require_privacy_decision"
              },
              {
                "control_type": "text",
                "label": "Require time approvals",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Require time approvals",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "require_time_approvals"
                },
                "type": "boolean",
                "name": "require_time_approvals"
              },
              {
                "control_type": "text",
                "label": "Require expense approvals",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Require expense approvals",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "require_expense_approvals"
                },
                "type": "boolean",
                "name": "require_expense_approvals"
              },
              {
                "control_type": "text",
                "label": "Has active timesheet submissions",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Has active timesheet submissions",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "has_active_timesheet_submissions"
                },
                "type": "boolean",
                "name": "has_active_timesheet_submissions"
              },
              {
                "control_type": "text",
                "label": "Has active expense report submissions",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Has active expense report submissions",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "has_active_expense_report_submissions"
                },
                "type": "boolean",
                "name": "has_active_expense_report_submissions"
              },
              {
                "properties": [
                  {
                    "control_type": "text",
                    "label": "Color",
                    "type": "string",
                    "name": "color"
                  },
                  {
                    "control_type": "number",
                    "label": "Key",
                    "parse_output": "float_conversion",
                    "type": "number",
                    "name": "key"
                  },
                  {
                    "control_type": "text",
                    "label": "Message",
                    "type": "string",
                    "name": "message"
                  }
                ],
                "label": "Status",
                "type": "object",
                "name": "status"
              },
              {
                "name": "update_whitelist",
                "type": "array",
                "of": "string",
                "control_type": "text",
                "label": "Update whitelist"
              },
              {
                "properties": [
                  {
                    "control_type": "text",
                    "label": "Time trackable",
                    "render_input": {},
                    "parse_output": {},
                    "toggle_hint": "Select from option list",
                    "toggle_field": {
                      "label": "Time trackable",
                      "control_type": "text",
                      "toggle_hint": "Use custom value",
                      "type": "boolean",
                      "name": "time_trackable"
                    },
                    "type": "boolean",
                    "name": "time_trackable"
                  },
                  {
                    "control_type": "text",
                    "label": "Has time entry role picker",
                    "render_input": {},
                    "parse_output": {},
                    "toggle_hint": "Select from option list",
                    "toggle_field": {
                      "label": "Has time entry role picker",
                      "control_type": "text",
                      "toggle_hint": "Use custom value",
                      "type": "boolean",
                      "name": "has_time_entry_role_picker"
                    },
                    "type": "boolean",
                    "name": "has_time_entry_role_picker"
                  },
                  {
                    "control_type": "text",
                    "label": "Project side panel",
                    "render_input": {},
                    "parse_output": {},
                    "toggle_hint": "Select from option list",
                    "toggle_field": {
                      "label": "Project side panel",
                      "control_type": "text",
                      "toggle_hint": "Use custom value",
                      "type": "boolean",
                      "name": "project_side_panel"
                    },
                    "type": "boolean",
                    "name": "project_side_panel"
                  }
                ],
                "label": "Account features",
                "type": "object",
                "name": "account_features"
              },
              {
                "properties": [
                  {
                    "control_type": "text",
                    "label": "Can upload files",
                    "render_input": {},
                    "parse_output": {},
                    "toggle_hint": "Select from option list",
                    "toggle_field": {
                      "label": "Can upload files",
                      "control_type": "text",
                      "toggle_hint": "Use custom value",
                      "type": "boolean",
                      "name": "can_upload_files"
                    },
                    "type": "boolean",
                    "name": "can_upload_files"
                  },
                  {
                    "control_type": "text",
                    "label": "Can private message",
                    "render_input": {},
                    "parse_output": {},
                    "toggle_hint": "Select from option list",
                    "toggle_field": {
                      "label": "Can private message",
                      "control_type": "text",
                      "toggle_hint": "Use custom value",
                      "type": "boolean",
                      "name": "can_private_message"
                    },
                    "type": "boolean",
                    "name": "can_private_message"
                  },
                  {
                    "control_type": "text",
                    "label": "Can join",
                    "render_input": {},
                    "parse_output": {},
                    "toggle_hint": "Select from option list",
                    "toggle_field": {
                      "label": "Can join",
                      "control_type": "text",
                      "toggle_hint": "Use custom value",
                      "type": "boolean",
                      "name": "can_join"
                    },
                    "type": "boolean",
                    "name": "can_join"
                  },
                  {
                    "control_type": "text",
                    "label": "Is participant",
                    "render_input": {},
                    "parse_output": {},
                    "toggle_hint": "Select from option list",
                    "toggle_field": {
                      "label": "Is participant",
                      "control_type": "text",
                      "toggle_hint": "Use custom value",
                      "type": "boolean",
                      "name": "is_participant"
                    },
                    "type": "boolean",
                    "name": "is_participant"
                  },
                  {
                    "control_type": "text",
                    "label": "Access level",
                    "type": "string",
                    "name": "access_level"
                  },
                  {
                    "control_type": "text",
                    "label": "Team lead",
                    "render_input": {},
                    "parse_output": {},
                    "toggle_hint": "Select from option list",
                    "toggle_field": {
                      "label": "Team lead",
                      "control_type": "text",
                      "toggle_hint": "Use custom value",
                      "type": "boolean",
                      "name": "team_lead"
                    },
                    "type": "boolean",
                    "name": "team_lead"
                  },
                  {
                    "control_type": "text",
                    "label": "User is client",
                    "render_input": {},
                    "parse_output": {},
                    "toggle_hint": "Select from option list",
                    "toggle_field": {
                      "label": "User is client",
                      "control_type": "text",
                      "toggle_hint": "Use custom value",
                      "type": "boolean",
                      "name": "user_is_client"
                    },
                    "type": "boolean",
                    "name": "user_is_client"
                  },
                  {
                    "control_type": "text",
                    "label": "Can change price",
                    "render_input": {},
                    "parse_output": {},
                    "toggle_hint": "Select from option list",
                    "toggle_field": {
                      "label": "Can change price",
                      "control_type": "text",
                      "toggle_hint": "Use custom value",
                      "type": "boolean",
                      "name": "can_change_price"
                    },
                    "type": "boolean",
                    "name": "can_change_price"
                  },
                  {
                    "control_type": "text",
                    "label": "Can change story billable",
                    "render_input": {},
                    "parse_output": {},
                    "toggle_hint": "Select from option list",
                    "toggle_field": {
                      "label": "Can change story billable",
                      "control_type": "text",
                      "toggle_hint": "Use custom value",
                      "type": "boolean",
                      "name": "can_change_story_billable"
                    },
                    "type": "boolean",
                    "name": "can_change_story_billable"
                  },
                  {
                    "control_type": "text",
                    "label": "Can post",
                    "render_input": {},
                    "parse_output": {},
                    "toggle_hint": "Select from option list",
                    "toggle_field": {
                      "label": "Can post",
                      "control_type": "text",
                      "toggle_hint": "Use custom value",
                      "type": "boolean",
                      "name": "can_post"
                    },
                    "type": "boolean",
                    "name": "can_post"
                  },
                  {
                    "control_type": "text",
                    "label": "Can edit",
                    "render_input": {},
                    "parse_output": {},
                    "toggle_hint": "Select from option list",
                    "toggle_field": {
                      "label": "Can edit",
                      "control_type": "text",
                      "toggle_hint": "Use custom value",
                      "type": "boolean",
                      "name": "can_edit"
                    },
                    "type": "boolean",
                    "name": "can_edit"
                  },
                  {
                    "control_type": "text",
                    "label": "Restricted",
                    "render_input": {},
                    "parse_output": {},
                    "toggle_hint": "Select from option list",
                    "toggle_field": {
                      "label": "Restricted",
                      "control_type": "text",
                      "toggle_hint": "Use custom value",
                      "type": "boolean",
                      "name": "restricted"
                    },
                    "type": "boolean",
                    "name": "restricted"
                  },
                  {
                    "control_type": "text",
                    "label": "Can see financials",
                    "render_input": {},
                    "parse_output": {},
                    "toggle_hint": "Select from option list",
                    "toggle_field": {
                      "label": "Can see financials",
                      "control_type": "text",
                      "toggle_hint": "Use custom value",
                      "type": "boolean",
                      "name": "can_see_financials"
                    },
                    "type": "boolean",
                    "name": "can_see_financials"
                  },
                  {
                    "control_type": "text",
                    "label": "Is guest on project",
                    "render_input": {},
                    "parse_output": {},
                    "toggle_hint": "Select from option list",
                    "toggle_field": {
                      "label": "Is guest on project",
                      "control_type": "text",
                      "toggle_hint": "Use custom value",
                      "type": "boolean",
                      "name": "is_guest_on_project"
                    },
                    "type": "boolean",
                    "name": "is_guest_on_project"
                  }
                ],
                "label": "Permissions",
                "type": "object",
                "name": "permissions"
              },
              {
                "control_type": "text",
                "label": "Over budget",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Over budget",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "over_budget"
                },
                "type": "boolean",
                "name": "over_budget"
              },
              {
                "control_type": "text",
                "label": "Expenses in burn rate",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Expenses in burn rate",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "expenses_in_burn_rate"
                },
                "type": "boolean",
                "name": "expenses_in_burn_rate"
              },
              {
                "control_type": "number",
                "label": "Total expenses in cents",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "total_expenses_in_cents"
              },
              {
                "control_type": "text",
                "label": "Price in cents",
                "type": "string",
                "name": "price_in_cents"
              },
              {
                "control_type": "text",
                "label": "Price",
                "type": "string",
                "name": "price"
              },
              {
                "control_type": "number",
                "label": "Percent of budget used",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "percent_of_budget_used"
              },
              {
                "control_type": "text",
                "label": "Budget used",
                "type": "string",
                "name": "budget_used"
              },
              {
                "control_type": "number",
                "label": "Budget used in cents",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "budget_used_in_cents"
              },
              {
                "control_type": "text",
                "label": "Budget remaining",
                "type": "string",
                "name": "budget_remaining"
              },
              {
                "control_type": "text",
                "label": "Target margin",
                "type": "string",
                "name": "target_margin"
              },
              {
                "control_type": "text",
                "label": "Stories are fixed fee by default",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Stories are fixed fee by default",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "stories_are_fixed_fee_by_default"
                },
                "type": "boolean",
                "name": "stories_are_fixed_fee_by_default"
              },
              {
                "control_type": "text",
                "label": "Creator ID",
                "type": "string",
                "name": "creator_id"
              },
              {
                "control_type": "text",
                "label": "Primary maven ID",
                "type": "string",
                "name": "primary_maven_id"
              },
              {
                "control_type": "text",
                "label": "ID",
                "type": "string",
                "name": "id"
              }
            ]
          }
       
        ]
      end
    },
    stories: {
      fields: lambda do |_connection, _config_fields|

        
      [
      {

        type: "array",
        name: "stories",

            "properties": [
              {
                "control_type": "text",
                "label": "Title",
                "type": "string",
                "name": "title"
              },
              {
                "control_type": "text",
                "label": "Description",
                "type": "string",
                "name": "description"
              },
              {
                "control_type": "text",
                "label": "Updated at",
                "render_input": "date_time_conversion",
                "parse_output": "date_time_conversion",
                "type": "date_time",
                "name": "updated_at"
              },
              {
                "control_type": "text",
                "label": "Assignment timestamped at",
                "render_input": "date_time_conversion",
                "parse_output": "date_time_conversion",
                "type": "date_time",
                "name": "assignment_timestamped_at"
              },
              {
                "control_type": "text",
                "label": "Created at",
                "render_input": "date_time_conversion",
                "parse_output": "date_time_conversion",
                "type": "date_time",
                "name": "created_at"
              },
              {
                "control_type": "text",
                "label": "Due date",
                "type": "string",
                "name": "due_date"
              },
              {
                "control_type": "text",
                "label": "Start date",
                "type": "string",
                "name": "start_date"
              },
              {
                "control_type": "text",
                "label": "Story type",
                "type": "string",
                "name": "story_type"
              },
              {
                "control_type": "text",
                "label": "State",
                "type": "string",
                "name": "state"
              },
              {
                "control_type": "number",
                "label": "Position",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "position"
              },
              {
                "control_type": "text",
                "label": "Archived",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Archived",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "archived"
                },
                "type": "boolean",
                "name": "archived"
              },
              {
                "control_type": "text",
                "label": "Deleted at",
                "type": "string",
                "name": "deleted_at"
              },
              {
                "control_type": "number",
                "label": "Sub story count",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "sub_story_count"
              },
              {
                "control_type": "number",
                "label": "Percentage complete",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "percentage_complete"
              },
              {
                "control_type": "text",
                "label": "Priority",
                "type": "string",
                "name": "priority"
              },
              {
                "control_type": "text",
                "label": "Has proofing access",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Has proofing access",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "has_proofing_access"
                },
                "type": "boolean",
                "name": "has_proofing_access"
              },
              {
                "control_type": "number",
                "label": "Subtree depth",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "subtree_depth"
              },
              {
                "control_type": "number",
                "label": "Ancestry depth",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "ancestry_depth"
              },
              {
                "control_type": "text",
                "label": "Time trackable",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Time trackable",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "time_trackable"
                },
                "type": "boolean",
                "name": "time_trackable"
              },
              {
                "control_type": "number",
                "label": "Time estimate in minutes",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "time_estimate_in_minutes"
              },
              {
                "control_type": "number",
                "label": "Logged billable time in minutes",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "logged_billable_time_in_minutes"
              },
              {
                "control_type": "number",
                "label": "Logged nonbillable time in minutes",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "logged_nonbillable_time_in_minutes"
              },
              {
                "control_type": "number",
                "label": "Sub stories time estimate in minutes",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "sub_stories_time_estimate_in_minutes"
              },
              {
                "control_type": "text",
                "label": "Sub stories billable time in minutes",
                "type": "string",
                "name": "sub_stories_billable_time_in_minutes"
              },
              {
                "control_type": "number",
                "label": "Weight",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "weight"
              },
              {
                "control_type": "number",
                "label": "Budget estimate in cents",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "budget_estimate_in_cents"
              },
              {
                "control_type": "number",
                "label": "Budget used in cents",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "budget_used_in_cents"
              },
              {
                "control_type": "number",
                "label": "Uninvoiced balance in cents",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "uninvoiced_balance_in_cents"
              },
              {
                "control_type": "number",
                "label": "Invoiced balance in cents",
                "parse_output": "float_conversion",
                "type": "number",
                "name": "invoiced_balance_in_cents"
              },
              {
                "control_type": "text",
                "label": "Sub stories budget estimate in cents",
                "type": "string",
                "name": "sub_stories_budget_estimate_in_cents"
              },
              {
                "control_type": "text",
                "label": "Sub stories budget used in cents",
                "type": "string",
                "name": "sub_stories_budget_used_in_cents"
              },
              {
                "control_type": "text",
                "label": "Fixed fee",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Fixed fee",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "fixed_fee"
                },
                "type": "boolean",
                "name": "fixed_fee"
              },
              {
                "control_type": "text",
                "label": "Billable",
                "render_input": {},
                "parse_output": {},
                "toggle_hint": "Select from option list",
                "toggle_field": {
                  "label": "Billable",
                  "control_type": "text",
                  "toggle_hint": "Use custom value",
                  "type": "boolean",
                  "name": "billable"
                },
                "type": "boolean",
                "name": "billable"
              },
              {
                "control_type": "text",
                "label": "Workspace ID",
                "type": "string",
                "name": "workspace_id"
              },
              {
                "control_type": "text",
                "label": "Creator ID",
                "type": "string",
                "name": "creator_id"
              },
              {
                "control_type": "text",
                "label": "Parent ID",
                "type": "string",
                "name": "parent_id"
              },
              {
                "control_type": "text",
                "label": "Root ID",
                "type": "string",
                "name": "root_id"
              },
              {
                "control_type": "text",
                "label": "ID",
                "type": "string",
                "name": "id"
              }
            ]
      }
      ]
        
        
        
        
        
        
        
      end
    },      
    time_entries: {
      fields: lambda do |_connection, _config_fields|
     [
          { 
            name: "time_entries",
            type: "array",
            "properties": [
        {
          "control_type": "text",
          "label": "Location",
          "type": "string",
          "name": "location"
        },
        {
          "control_type": "text",
          "label": "Created at",
          "render_input": "date_time_conversion",
          "parse_output": "date_time_conversion",
          "type": "date_time",
          "name": "created_at"
        },
        {
          "control_type": "text",
          "label": "Updated at",
          "render_input": "date_time_conversion",
          "parse_output": "date_time_conversion",
          "type": "date_time",
          "name": "updated_at"
        },
        {
          "control_type": "text",
          "label": "Date performed",
          "type": "string",
          "name": "date_performed"
        },
        {
          "control_type": "number",
          "label": "Time in minutes",
          "parse_output": "float_conversion",
          "type": "number",
          "name": "time_in_minutes"
        },
        {
          "control_type": "text",
          "label": "Billable",
          "render_input": {},
          "parse_output": {},
          "toggle_hint": "Select from option list",
          "toggle_field": {
            "label": "Billable",
            "control_type": "text",
            "toggle_hint": "Use custom value",
            "type": "boolean",
            "name": "billable"
          },
          "type": "boolean",
          "name": "billable"
        },
        {
          "control_type": "text",
          "label": "Notes",
          "type": "string",
          "name": "notes"
        },
        {
          "control_type": "number",
          "label": "Rate in cents",
          "parse_output": "float_conversion",
          "type": "number",
          "name": "rate_in_cents"
        },
        {
          "control_type": "number",
          "label": "Cost rate in cents",
          "parse_output": "float_conversion",
          "type": "number",
          "name": "cost_rate_in_cents"
        },
        {
          "control_type": "text",
          "label": "Currency",
          "type": "string",
          "name": "currency"
        },
        {
          "control_type": "text",
          "label": "Currency symbol",
          "type": "string",
          "name": "currency_symbol"
        },
        {
          "control_type": "number",
          "label": "Currency base unit",
          "parse_output": "float_conversion",
          "type": "number",
          "name": "currency_base_unit"
        },
        {
          "control_type": "text",
          "label": "Approved",
          "render_input": {},
          "parse_output": {},
          "toggle_hint": "Select from option list",
          "toggle_field": {
            "label": "Approved",
            "control_type": "text",
            "toggle_hint": "Use custom value",
            "type": "boolean",
            "name": "approved"
          },
          "type": "boolean",
          "name": "approved"
        },
        {
          "control_type": "text",
          "label": "Taxable",
          "render_input": {},
          "parse_output": {},
          "toggle_hint": "Select from option list",
          "toggle_field": {
            "label": "Taxable",
            "control_type": "text",
            "toggle_hint": "Use custom value",
            "type": "boolean",
            "name": "taxable"
          },
          "type": "boolean",
          "name": "taxable"
        },
        {
          "control_type": "text",
          "label": "Is invoiced",
          "render_input": {},
          "parse_output": {},
          "toggle_hint": "Select from option list",
          "toggle_field": {
            "label": "Is invoiced",
            "control_type": "text",
            "toggle_hint": "Use custom value",
            "type": "boolean",
            "name": "is_invoiced"
          },
          "type": "boolean",
          "name": "is_invoiced"
        },
        {
          "control_type": "text",
          "label": "Story ID",
          "type": "string",
          "name": "story_id"
        },
        {
          "control_type": "text",
          "label": "Workspace ID",
          "type": "string",
          "name": "workspace_id"
        },
        {
          "control_type": "text",
          "label": "User ID",
          "type": "string",
          "name": "user_id"
        },
        {
          "control_type": "text",
          "label": "Active submission ID",
          "type": "string",
          "name": "active_submission_id"
        },
        {
          "control_type": "text",
          "label": "Recent submission ID",
          "type": "string",
          "name": "recent_submission_id"
        },
        {
          "control_type": "text",
          "label": "ID",
          "type": "string",
          "name": "id"
        }
      ]
          }
     ]
      end
    },

     subscribed_events: {
      fields: lambda do |_connection, _config_fields|
     [
          { 
            name: "subscribed_events",
            type: "array",
              "properties": [
          {
            "control_type": "text",
            "label": "Event type",
            "type": "string",
            "name": "event_type"
          },
          {
            "control_type": "number",
            "label": "Account ID",
            "parse_output": "float_conversion",
            "type": "number",
            "name": "account_id"
          },
          {
            "control_type": "number",
            "label": "User ID",
            "parse_output": "float_conversion",
            "type": "number",
            "name": "user_id"
          },
          {
            "control_type": "number",
            "label": "Subject ID",
            "parse_output": "float_conversion",
            "type": "number",
            "name": "subject_id"
          },
          {
            "control_type": "text",
            "label": "Subject type",
            "type": "string",
            "name": "subject_type"
          },
                
                
                          {
            "control_type": "text",
            "label": "Change summary",
            "type": "string",
            "name": "change_summary"
          },
                          {
            "control_type": "text",
            "label": "Change Details",
            "type": "string",
            "name": "change_details"
          },
                
                
                
                
                
          {
            "control_type": "text",
            "label": "Subject changed at",
            "render_input": "date_time_conversion",
            "parse_output": "date_time_conversion",
            "type": "date_time",
            "name": "subject_changed_at"
          },

          {
            "control_type": "text",
            "label": "Updated at",
            "render_input": "date_time_conversion",
            "parse_output": "date_time_conversion",
            "type": "date_time",
            "name": "updated_at"
          },
          {
            "control_type": "text",
            "label": "Created at",
            "render_input": "date_time_conversion",
            "parse_output": "date_time_conversion",
            "type": "date_time",
            "name": "created_at"
          },
          {
            "control_type": "text",
            "label": "ID",
            "type": "string",
            "name": "id"
          }
        ],
            
            
            
            
          }
     ]
      end
    }

    
    
    
  },



  actions: {

    
    get_ml_object_by_id: {
      title: "Get ML Object by Id",
      subtitle: "Get object by Id in Mavenlink",
      description: "Get object in Mavenlink by Id</span>",
      help: "This will retrieve one object from Mavenlink. Use this action to get one object",

       config_fields: 
        [
          {
            name: 'object_type_selected',
            optional: false,
            label: 'Object Type',
            control_type: 'select',
            pick_list: 'ml_object_types',
            hint: 'Select the ML object type from picklist.'
          }
        ],
      input_fields: lambda do 
        [
          {
            name: 'id',
            label: 'ID',
            type: 'integer',
            optional: false
          }
       ]
      end,

      execute: lambda do |_connection, _input, _input_schema, _output_schema|
        { "#{_input['object_type_selected']}"=> get("#{_input["object_type_selected"]}/#{_input["id"]}")["#{_input["object_type_selected"]}"].values }
      end,

      output_fields: lambda do |object_definitions, _input, _output_schema|
        object_definitions["workspaces"]
      end,
    },

    get_ml_updated_objects: {
      title: "Get updated Mavenlink Objects",
      subtitle: "Get list Mavenlink objects Updated after a specific date/time",
      description: "Mavenlink",
      help: "Mavenlink",

       config_fields: 
        [
          {
            name: 'object_type_selected',
            optional: false,
            label: 'Mavenlink Object',
            control_type: 'select',
            pick_list: 'ml_object_types',
            hint: 'Select the ML object type from picklist.'
          }
        ],
      input_fields: lambda do 
        [
          {
            name: 'updated_after',
            label: 'Updated After',
            type: 'date_time',
            optional: false
          },
                    {
            name: 'params',
            label: 'Additional Params',
            type: 'string',
            optional: true
          }
       ]
      end,

      execute: lambda do |_connection, _input, _input_schema, _output_schema|
        { "#{_input['object_type_selected']}"=> get("#{_input["object_type_selected"]}?updated_after=#{_input["updated_after"]}&per_page=200&#{_input["params"]}")["#{_input["object_type_selected"]}"].values }
      end,

      output_fields: lambda do |object_definitions, _input, _output_schema|
        object_definitions["workspaces"]
      end,
    },

    get_ml_events: {
      title: "Get Mavenlink Subscribed Events",
      subtitle: "Get Mavenlink Subscribed Events",
      description: "Get Mavenlink Subscribed Events",
      help: "Get Mavenlink Subscribed Events",

       config_fields: 
        [
          {
            name: 'event_types_selected',
            optional: false,
            label: 'Mavenlink Event Types',
            control_type: 'multiselect',
            pick_list: 'ml_event_types',
            hint: 'Select the ML event type from picklist.'
          }
        ],
      input_fields: lambda do 
        [
                {
            name: 'updated_after',
            label: 'Updated After',
            type: 'date_time',
            optional: false
          },
                    {
            name: 'params',
            label: 'Additional Params',
            type: 'string',
            optional: true
          }
       ]
      end,

      execute: lambda do |_connection, _input, _input_schema, _output_schema|
        event_list=  parse_json("#{_input["event_types_selected"]}").join(",")       
        { "subscribed_events"=> get("subscribed_events?subject_changed_after=#{_input["updated_after"]}&per_page=200&optional_fields=payload_changes,change_summary,change_details&event_types=#{event_list}")["subscribed_events"].values }      
      end,

      output_fields: lambda do |object_definitions, _input, _output_schema|
        object_definitions["subscribed_events"]
      end,
    }

  },

  triggers: {
  

  },

  pick_lists: {

    ml_object_types: lambda do
      [
        # Display name, value
        ["Project", "workspaces"],
        ["Stories", "stories"],
        ["Time Entries", "time_entries"]
      ]
    end,
    ml_event_types: lambda do
      [
        # Display name, value   
        ["Story Delete", "story:deleted"],
        ["Story Update", "story:updated"],
        ["Story Create", "story:created"],
        
        ["Time Delete", "time_entry:deleted"],
        ["Time Update", "time_entry:updated"],
        ["Time Create", "time_entry:created"]
      ]
    end
  },

  # Reusable methods can be called from object_definitions, picklists or actions
  # See more at https://docs.workato.com/developing-connectors/sdk/sdk-reference/methods.html
  methods: {
  }
}

