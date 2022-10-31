{
  "action_order": [],
  "actions": [],
  "apps": [],
  "automatic_tasks": [],
  "export_date": 1663847208737,
  "export_format_version": 2,
  "export_type": null,
  "fields": [
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/incident_id",
      "hide_notification": false,
      "id": 311,
      "input_type": "number",
      "internal": false,
      "is_tracked": false,
      "name": "incident_id",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "add_row_patch",
          "value": null
        },
        {
          "tag_handle": "fn_datatable_utils",
          "value": null
        },
        {
          "tag_handle": "logger_test",
          "value": null
        },
        {
          "tag_handle": "playbook_0d0d17c3_f906_4f9d_b8af_56875e5a173a",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_8c52917a_046b_4af1_b336_f773ac64bb31",
          "value": "Playbook Tag"
        }
      ],
      "templates": [],
      "text": "incident_id",
      "tooltip": "",
      "type_id": 11,
      "uuid": "811e99d7-d194-4ce8-86cc-aff5e01ab85c",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/logger_start_time",
      "hide_notification": false,
      "id": 416,
      "input_type": "number",
      "internal": false,
      "is_tracked": false,
      "name": "logger_start_time",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "logger_start_time",
      "tooltip": "",
      "type_id": 11,
      "uuid": "a0aeb191-71a4-441c-9465-75c72a1d1ac5",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/logger_graph_type",
      "hide_notification": false,
      "id": 411,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "logger_graph_type",
      "operation_perms": {},
      "operations": [],
      "placeholder": "bar",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "logger_test",
          "value": null
        }
      ],
      "templates": [],
      "text": "logger_graph_type",
      "tooltip": "null for no graph",
      "type_id": 11,
      "uuid": "b631e46d-2d1f-4413-8966-0536a85dc70d",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/logger_query",
      "hide_notification": false,
      "id": 412,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "logger_query",
      "operation_perms": {},
      "operations": [],
      "placeholder": "_storageGroup IN [\"Default Storage Group\"] and deviceProduct",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "logger_test",
          "value": null
        }
      ],
      "templates": [],
      "text": "logger_query",
      "tooltip": "must contain carting commands as TOP, count span...",
      "type_id": 11,
      "uuid": "f0fb8928-b5d9-4b8d-8022-a88184554a97",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/logger_end_time",
      "hide_notification": false,
      "id": 415,
      "input_type": "number",
      "internal": false,
      "is_tracked": false,
      "name": "logger_end_time",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "logger_end_time",
      "tooltip": "",
      "type_id": 11,
      "uuid": "7eb63af8-e34e-4e0b-bee7-47f9704dd053",
      "values": []
    },
    {
      "export_key": "incident/internal_customizations_field",
      "id": 0,
      "input_type": "text",
      "internal": true,
      "name": "internal_customizations_field",
      "read_only": true,
      "text": "Customizations Field (internal)",
      "type_id": 0,
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa1"
    }
  ],
  "functions": [
    {
      "created_date": 1663839800309,
      "description": {
        "content": "Gets statistical data from Logger by quer. JSON result is returned to message dest. and picture is stored in an incident\u00b4s  atachement when graph type is set to \"Bar\"",
        "format": "text"
      },
      "destination_handle": "logger",
      "display_name": "ArcSight Logger: Chart Data with Picture",
      "export_key": "arcsight_logger_chart_data_with_picture",
      "id": 26,
      "last_modified_by": {
        "display_name": "Ond\u0159ej Val\u016f",
        "id": 15,
        "name": "valu@axenta.cz",
        "type": "user"
      },
      "last_modified_time": 1663839800350,
      "name": "arcsight_logger_chart_data_with_picture",
      "tags": [],
      "uuid": "93bebb50-7527-4c61-9da3-0b7d485ecaf7",
      "version": 1,
      "view_items": [
        {
          "content": "7eb63af8-e34e-4e0b-bee7-47f9704dd053",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "811e99d7-d194-4ce8-86cc-aff5e01ab85c",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "a0aeb191-71a4-441c-9465-75c72a1d1ac5",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "b631e46d-2d1f-4413-8966-0536a85dc70d",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "f0fb8928-b5d9-4b8d-8022-a88184554a97",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": []
    }
  ],
  "geos": null,
  "groups": null,
  "id": 1,
  "inbound_destinations": [],
  "inbound_mailboxes": null,
  "incident_artifact_types": [],
  "incident_types": [
    {
      "create_date": 1663847208023,
      "description": "Customization Packages (internal)",
      "enabled": false,
      "export_key": "Customization Packages (internal)",
      "hidden": false,
      "id": 0,
      "name": "Customization Packages (internal)",
      "parent_id": null,
      "system": false,
      "update_date": 1663847208023,
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa0"
    }
  ],
  "industries": null,
  "layouts": [],
  "locale": null,
  "message_destinations": [
    {
      "api_keys": [
        "259e987b-308a-4e4e-bcaa-2cda07fb2c22"
      ],
      "destination_type": 0,
      "expect_ack": true,
      "export_key": "logger",
      "name": "Logger",
      "programmatic_name": "logger",
      "tags": [],
      "users": [],
      "uuid": "d5f5d750-92cb-4906-b5dc-2d275197dc85"
    }
  ],
  "notifications": null,
  "overrides": [],
  "phases": [],
  "playbooks": [],
  "regulators": null,
  "roles": [],
  "scripts": [],
  "server_version": {
    "build_number": 8131,
    "major": 46,
    "minor": 0,
    "version": "46.0.8131"
  },
  "tags": [],
  "task_order": [],
  "timeframes": null,
  "types": [],
  "workflows": [],
  "workspaces": []
}
