set define off
set verify off
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end;
/
 
 
--application/set_environment
prompt  APPLICATION 10036 - Scheduler
--
-- Application Export:
--   Application:     10036
--   Name:            Scheduler
--   Date and Time:   21:03 Thursday January 8, 2015
--   Exported By:     AJIN.TULADHAR@GMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     BREADCRUMB:  Breadcrumb
--     BREADCRUMB ENTRY:  Breadcrumb: Detail Job (5)
--     BREADCRUMB ENTRY:  Breadcrumb: Jobs (3)
--     NAVBAR: 10. Logout ()
--     PAGE: 3. Jobs
--     PAGE: 5. Detail Job
--     PAGE: 1. Home
--     PLUGIN: Scheduler
--     REPORT TEMPLATE: Standard - Logs borderless 
--     TAB: TS1: Jobs (Jobs)
--   Manifest End
--   Version:         4.2.6.00.03
--   Instance ID:     63113759365424
--
-- Import:
--   Using Application Builder
--   or
--   Using SQL*Plus as the Oracle user APEX_040200 or as the owner (parsing schema) of the application
 
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to SQL*Plus as the Oracle user APEX_040200 or as the owner (parsing schema) of the application.
  wwv_flow_api.set_security_group_id(p_security_group_id=>nvl(wwv_flow_application_install.get_workspace_id,64760829309375094257));
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'en'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2012.01.01');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := nvl(wwv_flow_application_install.get_application_id,10036);
   wwv_flow_api.g_id_offset := nvl(wwv_flow_application_install.get_offset,0);
null;
 
end;
/

-- C O M P O N E N T    E X P O R T
-- Requires Application Express 2.2 or greater
begin
  wwv_flow_api.g_mode := 'REPLACE';
end;
/
 
 
prompt Component Export: BREADCRUMB 64760994328064113723
 
prompt  ...breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 64760994328064113723 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
wwv_flow_api.create_menu_option (
  p_id=>64760994719092113728 + wwv_flow_api.g_id_offset,
  p_menu_id=>64760994328064113723 + wwv_flow_api.g_id_offset,
  p_parent_id=>0,
  p_option_sequence=>10,
  p_short_name=>'Home',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.',
  p_page_id=>1,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>66899462922582229477 + wwv_flow_api.g_id_offset,
  p_menu_id=>64760994328064113723 + wwv_flow_api.g_id_offset,
  p_parent_id=>66957077616562866762 + wwv_flow_api.g_id_offset,
  p_option_sequence=>10,
  p_short_name=>'Detail Job',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::',
  p_page_id=>5,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>66957077616562866762 + wwv_flow_api.g_id_offset,
  p_menu_id=>64760994328064113723 + wwv_flow_api.g_id_offset,
  p_parent_id=>null,
  p_option_sequence=>10,
  p_short_name=>'Jobs',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:3:&SESSION.',
  p_page_id=>3,
  p_also_current_for_pages=> '');
 
null;
 
end;
/

 
prompt Component Export: BREADCRUMB ENTRY 66899462922582229477
 
prompt  ...breadcrumb entry
begin
wwv_flow_api.create_menu_option (
  p_id=>66899462922582229477 + wwv_flow_api.g_id_offset,
  p_menu_id=>64760994328064113723 + wwv_flow_api.g_id_offset,
  p_parent_id=>66957077616562866762 + wwv_flow_api.g_id_offset,
  p_option_sequence=>10,
  p_short_name=>'Detail Job',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::',
  p_page_id=>5,
  p_also_current_for_pages=>'');
 
null;
 
end;
/

 
prompt Component Export: BREADCRUMB ENTRY 66957077616562866762
 
prompt  ...breadcrumb entry
begin
wwv_flow_api.create_menu_option (
  p_id=>66957077616562866762 + wwv_flow_api.g_id_offset,
  p_menu_id=>64760994328064113723 + wwv_flow_api.g_id_offset,
  p_parent_id=>null,
  p_option_sequence=>10,
  p_short_name=>'Jobs',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:3:&SESSION.',
  p_page_id=>3,
  p_also_current_for_pages=>'');
 
null;
 
end;
/

 
prompt Component Export: NAVBAR 64760993104560113713
 
prompt  ...navigation bar entries
--
 
begin
 
wwv_flow_api.create_icon_bar_item(
  p_id => 64760993104560113713 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_icon_sequence=> 10,
  p_icon_image => '',
  p_icon_subtext=> 'Logout',
  p_icon_target=> '&LOGOUT_URL.',
  p_icon_image_alt=> 'Logout',
  p_icon_height=> 32,
  p_icon_width=> 32,
  p_icon_height2=> 24,
  p_icon_width2=> 24,
  p_nav_entry_is_feedback_yn => 'N',
  p_icon_bar_disp_cond=> '',
  p_icon_bar_disp_cond_type=> '',
  p_begins_on_new_line=> '',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
 
end;
/

 
prompt Component Export: PAGE 3
 
PROMPT ...Remove page 3
 
begin
 
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>3);
 
end;
/

 
prompt  ...PAGE 3: Jobs
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 3
 ,p_user_interface_id => 64760993013845113712 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Jobs'
 ,p_alias => 'JOBS'
 ,p_step_title => 'Jobs'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_inline_css => 
'span.SUCCEEDED, span.Active {'||unistr('\000a')||
'color: #fff;'||unistr('\000a')||
'background-color: #4ec625;'||unistr('\000a')||
'border-color: #4cae4c;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'span.FAILED, span.Inactive {'||unistr('\000a')||
'color: #fff;'||unistr('\000a')||
'background-color: #c5254d;'||unistr('\000a')||
'border-color: #4cae4c;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'span.notify {'||unistr('\000a')||
'border-radius: 3px;'||unistr('\000a')||
'padding: 2px 4px;'||unistr('\000a')||
'font-size: 90%;'||unistr('\000a')||
'font-family: Menlo,Monaco,Consolas,"Courier New",monospace;'||unistr('\000a')||
'margin-bottom: 5px;'||unistr('\000a')||
'white-space: nowrap;'||unistr('\000a')||
'vertical-align: middle;'||unistr('\000a')||
'position: relati'||
've;'||unistr('\000a')||
'top: -1px;'||unistr('\000a')||
'}'
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'AJIN.TULADHAR@GMAIL.COM'
 ,p_last_upd_yyyymmddhh24miss => '20150108202851'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 66957077422517866762 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Breadcrumb',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 64760984630443113681+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(64760994328064113723 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 64760992308688113700+ wwv_flow_api.g_id_offset,
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select job.job_name'||unistr('\000a')||
',      job.job_action'||unistr('\000a')||
',      job.start_date'||unistr('\000a')||
',      job.end_date'||unistr('\000a')||
',      prev_run.status previous_run_status'||unistr('\000a')||
',      prev_run.previous_run_date previous_run_date'||unistr('\000a')||
',      job.next_run_date'||unistr('\000a')||
',      job.repeat_interval'||unistr('\000a')||
'--,      job.enabled status'||unistr('\000a')||
',      decode(job.enabled, ''TRUE'', ''Active'', ''Inactive'') status'||unistr('\000a')||
',      job.enabled status_raw'||unistr('\000a')||
',      job.comments'||unistr('\000a')||
',      1 action_run'||unistr('\000a')||
',      ';

s:=s||'null action_edit'||unistr('\000a')||
',      null action_stats'||unistr('\000a')||
',      1 action_remove'||unistr('\000a')||
'from   user_scheduler_jobs job'||unistr('\000a')||
',      (select run.job_name, run.status, run.actual_start_date previous_run_date'||unistr('\000a')||
'        from   user_scheduler_job_run_details run'||unistr('\000a')||
'        where  (run.job_name, run.actual_start_date) in ('||unistr('\000a')||
'           select run_max.job_name, max(run_max.actual_start_date)'||unistr('\000a')||
'           from   user_scheduler_job_run_details';

s:=s||' run_max'||unistr('\000a')||
'           group by run_max.job_name)) prev_run'||unistr('\000a')||
'where  job.job_name = prev_run.job_name (+)'||unistr('\000a')||
'order by job.enabled desc, job.job_name';

wwv_flow_api.create_report_region (
  p_id=> 66957139928160887299 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_name=> 'My Jobs',
  p_region_name=>'',
  p_template=> 64760986728401113683+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 20,
  p_new_grid         => false,
  p_new_grid_row     => true,
  p_new_grid_column  => true,
  p_display_column=> null,
  p_display_point=> 'BODY_3',
  p_item_display_point=> 'ABOVE',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_query_row_template=> 64760987709437113686+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '15',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> '  ',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'no data found',
  p_query_num_rows_type=> 'NEXT_PREVIOUS_LINKS',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_break_type_flag=> 'DEFAULT_BREAK_FORMATTING',
  p_csv_output=> 'N',
  p_prn_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'N',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66957140321614887302 + wwv_flow_api.g_id_offset,
  p_region_id=> 66957139928160887299 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'JOB_NAME',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Job name',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66957140429640887302 + wwv_flow_api.g_id_offset,
  p_region_id=> 66957139928160887299 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'JOB_ACTION',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Job action',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66957140518284887302 + wwv_flow_api.g_id_offset,
  p_region_id=> 66957139928160887299 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'START_DATE',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Start date',
  p_use_as_row_header=> 'N',
  p_column_format=> 'DD-MON-YYYY HH24:MI',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66957140610364887302 + wwv_flow_api.g_id_offset,
  p_region_id=> 66957139928160887299 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'END_DATE',
  p_column_display_sequence=> 5,
  p_column_heading=> 'End date',
  p_use_as_row_header=> 'N',
  p_column_format=> 'DD-MON-YYYY HH24:MI',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66957140714574887302 + wwv_flow_api.g_id_offset,
  p_region_id=> 66957139928160887299 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'PREVIOUS_RUN_STATUS',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Previous run status',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66957140824394887302 + wwv_flow_api.g_id_offset,
  p_region_id=> 66957139928160887299 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'PREVIOUS_RUN_DATE',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Previous run date',
  p_use_as_row_header=> 'N',
  p_column_format=> 'DD-MON-YYYY HH24:MI',
  p_column_html_expression=>'#PREVIOUS_RUN_DATE# <span class="notify #PREVIOUS_RUN_STATUS#">#PREVIOUS_RUN_STATUS#</span>',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66957140924576887302 + wwv_flow_api.g_id_offset,
  p_region_id=> 66957139928160887299 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'NEXT_RUN_DATE',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Next run date',
  p_use_as_row_header=> 'N',
  p_column_format=> 'DD-MON-YYYY HH24:MI',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66957141015475887302 + wwv_flow_api.g_id_offset,
  p_region_id=> 66957139928160887299 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'REPEAT_INTERVAL',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Repeat interval',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66957141113777887303 + wwv_flow_api.g_id_offset,
  p_region_id=> 66957139928160887299 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 9,
  p_form_element_id=> null,
  p_column_alias=> 'STATUS',
  p_column_display_sequence=> 9,
  p_column_heading=> 'Status',
  p_use_as_row_header=> 'N',
  p_column_html_expression=>'<span class="notify #STATUS#">#STATUS#</span>',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66957141221463887303 + wwv_flow_api.g_id_offset,
  p_region_id=> 66957139928160887299 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 10,
  p_form_element_id=> null,
  p_column_alias=> 'STATUS_RAW',
  p_column_display_sequence=> 10,
  p_column_heading=> 'STATUS_RAW',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66957141308661887303 + wwv_flow_api.g_id_offset,
  p_region_id=> 66957139928160887299 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 11,
  p_form_element_id=> null,
  p_column_alias=> 'COMMENTS',
  p_column_display_sequence=> 11,
  p_column_heading=> 'COMMENTS',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 67004027009224598772 + wwv_flow_api.g_id_offset,
  p_region_id=> 66957139928160887299 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 12,
  p_form_element_id=> null,
  p_column_alias=> 'ACTION_RUN',
  p_column_display_sequence=> 12,
  p_column_heading=> '',
  p_use_as_row_header=> 'N',
  p_column_link=>'javascript:;',
  p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/jtfunexe_16x16.gif">',
  p_column_link_attr=>'class="run_job" data-job-id="#JOB_NAME#" alt="Run once"',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_report_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66957594127474978911 + wwv_flow_api.g_id_offset,
  p_region_id=> 66957139928160887299 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 13,
  p_form_element_id=> null,
  p_column_alias=> 'ACTION_EDIT',
  p_column_display_sequence=> 13,
  p_column_heading=> '',
  p_use_as_row_header=> 'N',
  p_column_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P_SCHEDULER_JOB_ID:#JOB_NAME#',
  p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_report_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66978088122073524066 + wwv_flow_api.g_id_offset,
  p_region_id=> 66957139928160887299 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 14,
  p_form_element_id=> null,
  p_column_alias=> 'ACTION_STATS',
  p_column_display_sequence=> 14,
  p_column_heading=> '',
  p_use_as_row_header=> 'N',
  p_column_link=>'f?p=&APP_ID.:5:&SESSION.:VIEW_LOGS:&DEBUG.::P_SCHEDULER_JOB_ID:#JOB_NAME#',
  p_column_linktext=>'<img src="#IMAGE_PREFIX#flashlight2_trans.gif" alt="">',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_report_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66978223920982539725 + wwv_flow_api.g_id_offset,
  p_region_id=> 66957139928160887299 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 15,
  p_form_element_id=> null,
  p_column_alias=> 'ACTION_REMOVE',
  p_column_display_sequence=> 15,
  p_column_heading=> '',
  p_use_as_row_header=> 'N',
  p_column_link=>'javascript:;',
  p_column_linktext=>'<img src="#IMAGE_PREFIX#red_x_16.png" alt="">',
  p_column_link_attr=>'class="remove_job" data-job-id="#JOB_NAME#"',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_report_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 66969316311153279735 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 10,
  p_button_plug_id => 66957139928160887299+wwv_flow_api.g_id_offset,
  p_button_name    => 'P_SCHEDULER_BUTTON_CREATE_JOB',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(64760991331985113698+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Create New Job',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>66984872418953898150 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P_SCHEDULER_ACTION_JOB_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 66957139928160887299+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 66983651926257955535 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_name => 'Remove job'
 ,p_event_sequence => 10
 ,p_triggering_element_type => 'JQUERY_SELECTOR'
 ,p_triggering_element => '.remove_job'
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'click'
  );
wwv_flow_api.create_page_da_action (
  p_id => 66983654215502955537 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_event_id => 66983651926257955535 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_CONFIRM'
 ,p_attribute_01 => 'Would you like to perform this delete action?'
 ,p_stop_execution_on_error => 'Y'
 );
wwv_flow_api.create_page_da_action (
  p_id => 66984887107739903326 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_event_id => 66983651926257955535 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 30
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_SET_VALUE'
 ,p_affected_elements_type => 'ITEM'
 ,p_affected_elements => 'P_SCHEDULER_ACTION_JOB_ID'
 ,p_attribute_01 => 'JAVASCRIPT_EXPRESSION'
 ,p_attribute_05 => '$(this.triggeringElement).attr(''data-job-id'')'
 ,p_attribute_09 => 'N'
 ,p_stop_execution_on_error => 'Y'
 ,p_wait_for_result => 'Y'
 );
wwv_flow_api.create_page_da_action (
  p_id => 66984999326058190712 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_event_id => 66983651926257955535 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 40
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_EXECUTE_PLSQL_CODE'
 ,p_attribute_01 => 'begin'||unistr('\000a')||
'    at_scheduler.remove_job(p_job_name  => :P_SCHEDULER_ACTION_JOB_ID);'||unistr('\000a')||
'end;'
 ,p_attribute_02 => 'P_SCHEDULER_ACTION_JOB_ID'
 ,p_stop_execution_on_error => 'Y'
 ,p_wait_for_result => 'N'
 );
wwv_flow_api.create_page_da_action (
  p_id => 66985002223038911421 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_event_id => 66983651926257955535 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 50
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_REFRESH'
 ,p_affected_elements_type => 'REGION'
 ,p_affected_region_id => 66957139928160887299 + wwv_flow_api.g_id_offset
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 67004046307151646315 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_name => 'Run job'
 ,p_event_sequence => 20
 ,p_triggering_element_type => 'JQUERY_SELECTOR'
 ,p_triggering_element => '.run_job'
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'click'
  );
wwv_flow_api.create_page_da_action (
  p_id => 67004046615768646317 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_event_id => 67004046307151646315 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_CONFIRM'
 ,p_attribute_01 => 'Are you sure you want to run this job just for one time?'
 ,p_stop_execution_on_error => 'Y'
 );
wwv_flow_api.create_page_da_action (
  p_id => 67004051217154655871 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_event_id => 67004046307151646315 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 20
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_SET_VALUE'
 ,p_affected_elements_type => 'ITEM'
 ,p_affected_elements => 'P_SCHEDULER_ACTION_JOB_ID'
 ,p_attribute_01 => 'JAVASCRIPT_EXPRESSION'
 ,p_attribute_05 => '$(this.triggeringElement).attr(''data-job-id'')'
 ,p_attribute_09 => 'N'
 ,p_stop_execution_on_error => 'Y'
 ,p_wait_for_result => 'Y'
 );
wwv_flow_api.create_page_da_action (
  p_id => 67004052502489382000 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_event_id => 67004046307151646315 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 30
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_EXECUTE_PLSQL_CODE'
 ,p_attribute_01 => 'begin'||unistr('\000a')||
'    at_scheduler.execute_job(p_job_name  => :P_SCHEDULER_ACTION_JOB_ID);'||unistr('\000a')||
'end;'
 ,p_attribute_02 => 'P_SCHEDULER_ACTION_JOB_ID'
 ,p_stop_execution_on_error => 'Y'
 ,p_wait_for_result => 'Y'
 );
wwv_flow_api.create_page_da_action (
  p_id => 67004053632022383557 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_event_id => 67004046307151646315 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 40
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_REFRESH'
 ,p_affected_elements_type => 'REGION'
 ,p_affected_region_id => 66957139928160887299 + wwv_flow_api.g_id_offset
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 3
--
 
begin
 
null;
end;
null;
 
end;
/

 
prompt Component Export: PAGE 5
 
PROMPT ...Remove page 5
 
begin
 
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>5);
 
end;
/

 
prompt  ...PAGE 5: Detail Job
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 5
 ,p_user_interface_id => 64760993013845113712 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Detail Job'
 ,p_step_title => 'Manage Job'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Manage Jobs'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_inline_css => 
'img.iconMedium {'||unistr('\000a')||
'  position: absolute;'||unistr('\000a')||
'  left: 0;'||unistr('\000a')||
'  top: 0;'||unistr('\000a')||
'  display: block;'||unistr('\000a')||
'  margin: 8px;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'img.iconMedium.success {'||unistr('\000a')||
'  background-position: -84px 0;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'img.iconMedium {'||unistr('\000a')||
'  width: 32px;'||unistr('\000a')||
'  height: 32px;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'img.iconSmall, img.iconPage, img.iconMini, img.iconMedium {'||unistr('\000a')||
'  background-image: url(''https://apex.oracle.com/i/apex_ui/apex_ui.png'');'||unistr('\000a')||
'  background-repeat: no-repeat;'||unistr('\000a')||
'  background-color: transpa'||
'rent;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'img {'||unistr('\000a')||
'  border: 0;'||unistr('\000a')||
'  margin: 0;'||unistr('\000a')||
'}'||unistr('\000a')||
'img {'||unistr('\000a')||
'  border: 0;'||unistr('\000a')||
'}'
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'AJIN.TULADHAR@GMAIL.COM'
 ,p_last_upd_yyyymmddhh24miss => '20150107210211'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 66795456819493419018 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_plug_name=> 'Detail Job',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 64760985330531113682+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_include_in_reg_disp_sel_yn=> 'Y',
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => 'REQUEST_NOT_EQUAL_CONDITION',
  p_plug_display_when_condition => 'VIEW_LOGS',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select null log_id'||unistr('\000a')||
',      job.job_name'||unistr('\000a')||
',      to_char(job.next_run_date, ''DD-MON-YYYY HH24:MI:SS'') schedule_time'||unistr('\000a')||
',      null start_time'||unistr('\000a')||
',      null end_time'||unistr('\000a')||
',      null duration'||unistr('\000a')||
',      null operation'||unistr('\000a')||
',      ''Queued'' status'||unistr('\000a')||
',      null additional_info'||unistr('\000a')||
'from   user_scheduler_jobs job'||unistr('\000a')||
'where  job.next_run_date is not null '||unistr('\000a')||
'and    job.job_name = :P_SCHEDULER_JOB_ID'||unistr('\000a')||
'union'||unistr('\000a')||
'select log.log_id log_id'||unistr('\000a')||
',      ';

s:=s||'log.job_name job_name'||unistr('\000a')||
',      to_char(run.REQ_START_DATE, ''DD-MON-YYYY HH24:MI:SS'') schedule_time'||unistr('\000a')||
',      to_char(run.ACTUAL_START_DATE, ''DD-MON-YYYY HH24:MI:SS'') start_time'||unistr('\000a')||
',      to_char(run.ACTUAL_START_DATE + run.RUN_DURATION , ''DD-MON-YYYY HH24:MI:SS'') end_time'||unistr('\000a')||
',      to_char(run.RUN_DURATION , ''HH24:MI:SS'') duration'||unistr('\000a')||
',      log.operation'||unistr('\000a')||
',      log.status'||unistr('\000a')||
',      run.additional_info'||unistr('\000a')||
'from   USER_';

s:=s||'SCHEDULER_JOB_LOG log'||unistr('\000a')||
',      USER_SCHEDULER_JOB_RUN_DETAILS run'||unistr('\000a')||
'where  log.log_id = run.log_id'||unistr('\000a')||
'and    log.job_name = :P_SCHEDULER_JOB_ID'||unistr('\000a')||
'order by START_TIME desc';

wwv_flow_api.create_report_region (
  p_id=> 66888771229313278683 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_name=> 'Logs & predictions',
  p_region_name=>'',
  p_template=> 64760986728401113683+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 20,
  p_include_in_reg_disp_sel_yn=> 'Y',
  p_new_grid         => false,
  p_new_grid_row     => true,
  p_new_grid_column  => true,
  p_display_column=> null,
  p_display_point=> 'BODY_3',
  p_item_display_point=> 'ABOVE',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_when_condition=> 'VIEW_LOGS',
  p_display_condition_type=> 'REQUEST_EQUALS_CONDITION',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_ajax_items_to_submit=> 'P_SCHEDULER_JOB_ID',
  p_query_row_template=> 66894130129341855744+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '30',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> ' - ',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'no data found',
  p_query_num_rows_type=> 'NEXT_PREVIOUS_LINKS',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_break_type_flag=> 'DEFAULT_BREAK_FORMATTING',
  p_csv_output=> 'N',
  p_prn_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'N',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66888771523128278691 + wwv_flow_api.g_id_offset,
  p_region_id=> 66888771229313278683 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'LOG_ID',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Log ID',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66888771606111278691 + wwv_flow_api.g_id_offset,
  p_region_id=> 66888771229313278683 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'JOB_NAME',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Job Name',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66888771730785278691 + wwv_flow_api.g_id_offset,
  p_region_id=> 66888771229313278683 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'SCHEDULE_TIME',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Scheduled time',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66888771820026278691 + wwv_flow_api.g_id_offset,
  p_region_id=> 66888771229313278683 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'START_TIME',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Start time',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66888771922672278692 + wwv_flow_api.g_id_offset,
  p_region_id=> 66888771229313278683 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'END_TIME',
  p_column_display_sequence=> 5,
  p_column_heading=> 'End time',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66888772014164278692 + wwv_flow_api.g_id_offset,
  p_region_id=> 66888771229313278683 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'DURATION',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Duration',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66888772124601278692 + wwv_flow_api.g_id_offset,
  p_region_id=> 66888771229313278683 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'OPERATION',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Operation',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66888774206004278692 + wwv_flow_api.g_id_offset,
  p_region_id=> 66888771229313278683 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'STATUS',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Status',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 66888774313080278692 + wwv_flow_api.g_id_offset,
  p_region_id=> 66888771229313278683 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 9,
  p_form_element_id=> null,
  p_column_alias=> 'ADDITIONAL_INFO',
  p_column_display_sequence=> 9,
  p_column_heading=> 'Info',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 66899397212371481594 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_plug_name=> 'Breadcrumb',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 64760984630443113681+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(64760994328064113723 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 64760992308688113700+ wwv_flow_api.g_id_offset,
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 66795457223514419020 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 30,
  p_button_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_button_name    => 'P_SCHEDULER_BUTTON_SAVE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(64760991331985113698+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P_SCHEDULER_JOB_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 66795457625024419020 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 10,
  p_button_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_button_name    => 'P_SCHEDULER_BUTTON_CANCEL',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(64760991331985113698+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:5::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 66983182023908860207 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 70,
  p_button_plug_id => 66888771229313278683+wwv_flow_api.g_id_offset,
  p_button_name    => 'P_SCHEDULER_BUTTON_CANCEL_LOGS',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(64760991331985113698+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 66795457005720419019 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 40,
  p_button_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_button_name    => 'P_SCHEDULER_BUTTON_CREATE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(64760991331985113698+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P_SCHEDULER_JOB_ID',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 66795457409277419020 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 20,
  p_button_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_button_name    => 'P_SCHEDULER_BUTTON_DELETE',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(64760991331985113698+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''P_SCHEDULER_BUTTON_DELETE'');',
  p_button_execute_validations=>'N',
  p_button_condition=> 'P_SCHEDULER_JOB_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 66863858211370086497 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 50,
  p_button_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_button_name    => 'P_SCHEDULER_BUTTON_ENABLE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(64760991331985113698+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'Y',
  p_button_image_alt=> 'Activate',
  p_button_position=> 'REGION_TEMPLATE_PREVIOUS',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'declare '||unistr('\000a')||
'    l_return boolean := false;'||unistr('\000a')||
'begin '||unistr('\000a')||
'    if :P_SCHEDULER_JOB_ID is not null then'||unistr('\000a')||
'        l_return := not at_scheduler.is_actief_job(p_job_name => :P_SCHEDULER_JOB_ID);'||unistr('\000a')||
'    end if;'||unistr('\000a')||
'    return l_return;'||unistr('\000a')||
'end;',
  p_button_condition_type=> 'FUNCTION_BODY',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 66865533509048848925 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 60,
  p_button_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_button_name    => 'P_SCHEDULER_BUTTON_DISABLE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(64760991331985113698+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'Y',
  p_button_image_alt=> 'Deactivate',
  p_button_position=> 'REGION_TEMPLATE_PREVIOUS',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'declare '||unistr('\000a')||
'    l_return boolean := false;'||unistr('\000a')||
'begin '||unistr('\000a')||
'    if :P_SCHEDULER_JOB_ID is not null then'||unistr('\000a')||
'        l_return := at_scheduler.is_actief_job(p_job_name => :P_SCHEDULER_JOB_ID);'||unistr('\000a')||
'    end if;'||unistr('\000a')||
'    return l_return;'||unistr('\000a')||
'end;',
  p_button_condition_type=> 'FUNCTION_BODY',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>66795459920355419029 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_branch_name=> '',
  p_branch_action=> 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_branch_condition_type=> 'REQUEST_IN_CONDITION',
  p_branch_condition=> 'P_SCHEDULER_BUTTON_DELETE, P_SCHEDULER_BUTTON_SAVE, P_SCHEDULER_CHANGE_STATE',
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>66795457805529419021 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P_SCHEDULER_JOB_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'ID',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> null,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 64760990901340113698+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>66795458026659419022 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P_SCHEDULER_JOB_NAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Name',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 50,
  p_cMaxlength=> 254,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 64760991016750113698+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>66795458217581419022 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P_SCHEDULER_JOB_STARTDATE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Start Date',
  p_format_mask=>'DD-MON-YYYY HH24:MI',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_DATE_PICKER',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 9,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 64760991016750113698+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_04 => 'button',
  p_attribute_05 => 'N',
  p_attribute_07 => 'MONTH_AND_YEAR',
  p_attribute_08 => '2015:2020',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>66795458404843419023 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P_SCHEDULER_JOB_ACTION',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Action',
  p_source_type=> 'STATIC',
  p_source_post_computation => 'UPPER(:P_SCHEDULER_JOB_ACTION)',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 50,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 64760991016750113698+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>66795458608231419023 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P_SCHEDULER_JOB_COMMENTS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 110,
  p_item_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Comments',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXTAREA',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 120,
  p_cMaxlength=> 255,
  p_cHeight=> 3,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 64760991016750113698+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>66795474217627450281 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P_SCHEDULER_JOB_REPEAT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Repeat Interval',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 64760990901340113698+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>66797006901039700988 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P_SCHEDULER_JOB_REPEAT_FREQ',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 80,
  p_item_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Repeat',
  p_pre_element_text=>'<p>Specifies the frequency, or type of recurrences, and is the only mandatory: </p>',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC:Minutely,Daily,Hourly, Monthly,Weekly,Yearly',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 64760990901340113698+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>66797163006621009449 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P_SCHEDULER_JOB_REPEAT_DAYS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 90,
  p_item_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_pre_element_text=>'<p>Specifies the day or days of the week with reference to the frequency:</p>',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_CHECKBOX',
  p_lov=> 'STATIC2:Monday;MON,Tuesday;TUE,Wednesday;WED,Thursday;THU,Friday;FRI,Saturday;SAT,Sunday;SUN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 64760990901340113698+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => '3',
  p_attribute_02 => 'VERTICAL',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'interval:'||unistr('\000a')||
'minutely = minutes'||unistr('\000a')||
'hourly = hours'||unistr('\000a')||
'daily = days'||unistr('\000a')||
'weekly = week'||unistr('\000a')||
'monthly = month';

wwv_flow_api.create_page_item(
  p_id=>66797164122568017335 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P_SCHEDULER_JOB_REPEAT_INTV',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 100,
  p_item_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default=> '1',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Repeat Interval',
  p_pre_element_text=>'<p>Specifies the interval associated with the specified frequency, such that an interval of 2 on minutely frequency</br>would cause the job to executie every other minutes, while an internal of 10 would cause it to executie</br>every 10 minutes. The allowable values are 1 to 999 with a default of 1.</p>'||unistr('\000a')||
''||unistr('\000a')||
'Repeat every ',
  p_post_element_text=>' minute(s) / hour(s) / day(s) / week / month'||unistr('\000a')||
'',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_NUMBER_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 10,
  p_cMaxlength=> 20,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 64760990807962113698+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_03 => 'right',
  p_show_quick_picks=>'N',
  p_item_comment => 'interval:'||unistr('\000a')||
'minutely = minutes'||unistr('\000a')||
'hourly = hours'||unistr('\000a')||
'daily = days'||unistr('\000a')||
'weekly = week'||unistr('\000a')||
'monthly = month');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>66797244519906109701 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P_SCHEDULER_JOB_ENDDATE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'End Date',
  p_format_mask=>'DD-MON-YYYY HH24:MI',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_DATE_PICKER',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 64760990901340113698+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_04 => 'button',
  p_attribute_05 => 'N',
  p_attribute_07 => 'NONE',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>66853905612732025572 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P_SCHEDULER_JOB_START_BY_HOUR',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 120,
  p_item_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'By Hour',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 64760990901340113698+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>66916744607020604020 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P_SCHEDULER_JOB_STATUS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 35,
  p_item_plug_id => 66795456819493419018+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Status',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov=> 'STATIC:<span style="color: green">Active</span>;TRUE,<span style="color: red">Inactive</span>;FALSE',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_display_when=>'P_SCHEDULER_JOB_ID',
  p_display_when_type=>'ITEM_IS_NOT_NULL',
  p_field_template=> 64760990901340113698+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'LOV',
  p_attribute_04 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 66841955512309484687 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 5
 ,p_name => 'Calculate REPEAT_INTERVAL'
 ,p_event_sequence => 10
 ,p_triggering_element_type => 'ITEM'
 ,p_triggering_element => 'P_SCHEDULER_JOB_REPEAT_FREQ,P_SCHEDULER_JOB_REPEAT_DAYS,P_SCHEDULER_JOB_REPEAT_INTV'
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'change'
  );
wwv_flow_api.create_page_da_action (
  p_id => 66841963024959484690 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 5
 ,p_event_id => 66841955512309484687 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'Y'
 ,p_action => 'NATIVE_JAVASCRIPT_CODE'
 ,p_affected_elements_type => 'ITEM'
 ,p_affected_elements => 'P_SCHEDULER_JOB_REPEAT'
 ,p_attribute_01 => 'var repeat_interval = "";'||unistr('\000a')||
''||unistr('\000a')||
'if ($v("P_SCHEDULER_JOB_REPEAT_FREQ").length > 0){'||unistr('\000a')||
'	repeat_interval = repeat_interval + "FREQ=" + $v("P_SCHEDULER_JOB_REPEAT_FREQ").trim().toUpperCase() + "; ";'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'if ($v("P_SCHEDULER_JOB_REPEAT_DAYS").length > 0){'||unistr('\000a')||
'	repeat_interval = repeat_interval + "BYDAY=" + $v("P_SCHEDULER_JOB_REPEAT_DAYS").replace(/:/g, ",") + "; ";'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'if ($v("P_SCHEDULER_JOB_REPEAT_INTV").length > 0 ){'||unistr('\000a')||
'	repeat_interval = repeat_interval + "interval=" + $v("P_SCHEDULER_JOB_REPEAT_INTV") + "; ";'||unistr('\000a')||
'}'||unistr('\000a')||
'$s("P_SCHEDULER_JOB_REPEAT",repeat_interval);'||unistr('\000a')||
''
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare '||unistr('\000a')||
'    l_return boolean := true;'||unistr('\000a')||
'begin '||unistr('\000a')||
'    l_return := at_scheduler.add_job (p_job_name => :P_SCHEDULER_JOB_NAME'||unistr('\000a')||
'                  , p_job_action => :P_SCHEDULER_JOB_ACTION'||unistr('\000a')||
'                  , p_start_date => to_date(:P_SCHEDULER_JOB_STARTDATE, ''DD-MON-YYYY HH24:MI'')'||unistr('\000a')||
'                  , p_repeat_interval => :P_SCHEDULER_JOB_REPEAT'||unistr('\000a')||
'                  , p_end_date => :P_SCHEDULER_JOB_ENDDATE'||unistr('\000a')||
' ';

p:=p||'                 , p_comments => :P_SCHEDULER_JOB_COMMENTS'||unistr('\000a')||
'                  );'||unistr('\000a')||
'    if l_return then'||unistr('\000a')||
'       :P_SCHEDULER_JOB_ID := :P_SCHEDULER_JOB_NAME; '||unistr('\000a')||
'    end if;'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 66795459425129419026 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Add job',
  p_process_sql_clob => p,
  p_process_error_message=> 'Failed to add job. Please try again. ',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>66795457005720419019 + wwv_flow_api.g_id_offset,
  p_process_when=>'begin'||unistr('\000a')||
'    return not at_scheduler.exists_job(:P_SCHEDULER_JOB_NAME);'||unistr('\000a')||
'end;',
  p_process_when_type=>'FUNCTION_BODY',
  p_only_for_changed_rows=> 'Y',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||unistr('\000a')||
'    if :P_SCHEDULER_JOB_STATUS = ''TRUE'' then '||unistr('\000a')||
'        at_scheduler.disable_job(p_job_name => :P_SCHEDULER_JOB_ID);'||unistr('\000a')||
'    else '||unistr('\000a')||
'        at_scheduler.enable_job(p_job_name => :P_SCHEDULER_JOB_ID);'||unistr('\000a')||
'    end if;'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 66892886813570018394 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 15,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Change job state',
  p_process_sql_clob => p,
  p_process_error_message=> 'Failed to modify the state of the job. Please try again later.',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=>'P_SCHEDULER_BUTTON_ENABLE, P_SCHEDULER_BUTTON_DISABLE, P_SCHEDULER_CHANGE_STATE',
  p_process_when_type=>'REQUEST_IN_CONDITION',
  p_only_for_changed_rows=> 'Y',
  p_process_success_message=> 'Job state changed. Please check the status of the job.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||unistr('\000a')||
'    at_scheduler.remove_job(p_job_name  => :P_SCHEDULER_JOB_ID);'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 66795459615216419026 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Delete job',
  p_process_sql_clob => p,
  p_process_error_message=> 'Failed to remove program',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>66795457409277419020 + wwv_flow_api.g_id_offset,
  p_process_when=>'P_SCHEDULER_JOB_ID',
  p_process_when_type=>'ITEM_IS_NOT_NULL',
  p_only_for_changed_rows=> 'Y',
  p_process_success_message=> 'Program removed',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'5';

wwv_flow_api.create_page_process(
  p_id     => 66795459014061419025 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>66795457409277419020 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare '||unistr('\000a')||
'    l_return boolean := true;'||unistr('\000a')||
'begin'||unistr('\000a')||
'    at_scheduler.remove_job(p_job_name => :P_SCHEDULER_JOB_ID);'||unistr('\000a')||
'    l_return := at_scheduler.add_job (p_job_name => :P_SCHEDULER_JOB_NAME'||unistr('\000a')||
'                  , p_job_action => :P_SCHEDULER_JOB_ACTION'||unistr('\000a')||
'                  , p_start_date => to_date(:P_SCHEDULER_JOB_STARTDATE, ''DD-MON-YYYY HH24:MI'')'||unistr('\000a')||
'                  , p_repeat_interval => :P_SCHEDULER_JOB_REPE';

p:=p||'AT'||unistr('\000a')||
'                  , p_end_date => :P_SCHEDULER_JOB_ENDDATE'||unistr('\000a')||
'                  , p_enabled => true'||unistr('\000a')||
'                  , p_comments => :P_SCHEDULER_JOB_COMMENTS'||unistr('\000a')||
'                  );'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 66909099532625149687 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Update job',
  p_process_sql_clob => p,
  p_process_error_message=> 'Failed to update. Please try again.',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>66795457223514419020 + wwv_flow_api.g_id_offset,
  p_only_for_changed_rows=> 'Y',
  p_process_success_message=> 'Update successful',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'DECLARE'||unistr('\000a')||
'    array apex_application_global.vc_arr2;'||unistr('\000a')||
'    l_key varchar2(250) := null;'||unistr('\000a')||
'    l_value varchar2(250) := null;'||unistr('\000a')||
'    l_repeat_interval varchar2(250);'||unistr('\000a')||
'    l_delimiter_pos integer;'||unistr('\000a')||
'BEGIN'||unistr('\000a')||
''||unistr('\000a')||
'    select job_name, job_action, to_char(start_date, ''DD-MON-YYYY HH24:MI''), repeat_interval, to_char(end_date, ''DD-MON-YYYY HH24:MI''), comments, enabled'||unistr('\000a')||
'    into   :P_SCHEDULER_JOB_NAME, :P_SCHEDULER_JOB_ACT';

p:=p||'ION, :P_SCHEDULER_JOB_STARTDATE, :P_SCHEDULER_JOB_REPEAT, :P_SCHEDULER_JOB_ENDDATE, :P_SCHEDULER_JOB_COMMENTS, :P_SCHEDULER_JOB_STATUS'||unistr('\000a')||
'    from   user_scheduler_jobs'||unistr('\000a')||
'    where  job_name = :P_SCHEDULER_JOB_ID;'||unistr('\000a')||
''||unistr('\000a')||
'    array  := apex_util.string_to_table(:P_SCHEDULER_JOB_REPEAT, '';'');'||unistr('\000a')||
'    for i in 1.. array.count loop'||unistr('\000a')||
'      --dbms_output.put_line(trim(array(i)));'||unistr('\000a')||
'      l_delimiter_pos := instr(trim(arr';

p:=p||'ay(i)), ''='');'||unistr('\000a')||
''||unistr('\000a')||
'      l_key := substr(trim(array(i)), 1, l_delimiter_pos - 1);'||unistr('\000a')||
'      l_value := substr(trim(array(i)), l_delimiter_pos + 1);'||unistr('\000a')||
''||unistr('\000a')||
'      --dbms_output.put_line(l_key);'||unistr('\000a')||
'    '||unistr('\000a')||
'      if l_key = ''FREQ'' then'||unistr('\000a')||
'         :P_SCHEDULER_JOB_REPEAT_FREQ := l_value;'||unistr('\000a')||
'         --dbms_output.put_line(l_value );'||unistr('\000a')||
'         null;'||unistr('\000a')||
'      end if;'||unistr('\000a')||
''||unistr('\000a')||
'      if l_key = ''BYDAY'' then'||unistr('\000a')||
'         --dbms_output.put_line(l_v';

p:=p||'alue );'||unistr('\000a')||
'         :P_SCHEDULER_JOB_REPEAT_DAYS := replace(l_value, '','', '':'') ;'||unistr('\000a')||
'      end if;'||unistr('\000a')||
'    '||unistr('\000a')||
'      if l_key = ''interval'' then'||unistr('\000a')||
'         --dbms_output.put_line(l_value );'||unistr('\000a')||
'         :P_SCHEDULER_JOB_REPEAT_INTV:= l_value;'||unistr('\000a')||
'         --null;'||unistr('\000a')||
'      end if;'||unistr('\000a')||
''||unistr('\000a')||
'    end loop;'||unistr('\000a')||
'END;';

wwv_flow_api.create_page_process(
  p_id     => 66795459203254419026 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 40,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Row fetch from user_scheduler_jobs',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=>'P_SCHEDULER_JOB_ID',
  p_process_when_type=>'ITEM_IS_NOT_NULL',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 5
--
 
begin
 
null;
end;
null;
 
end;
/

 
prompt Component Export: PAGE 1
 
PROMPT ...Remove page 1
 
begin
 
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>1);
 
end;
/

 
prompt  ...PAGE 1: Home
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 1
 ,p_user_interface_id => 64760993013845113712 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Home'
 ,p_step_title => 'Home'
 ,p_step_sub_title => 'Home'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'N'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'AJIN.TULADHAR@GMAIL.COM'
 ,p_last_upd_yyyymmddhh24miss => '20150107093446'
  );
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 1
--
 
begin
 
null;
end;
null;
 
end;
/

 
prompt Component Export: PLUGIN 64761275029442139349
 
prompt  ...ui types
--
 
begin
 
null;
 
end;
/

prompt  ...plugins
--
 
begin
 
wwv_flow_api.create_plugin (
  p_id => 64761275029442139349 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'REGION TYPE'
 ,p_name => 'NET.TULADHAR.SCHEDULER'
 ,p_display_name => 'Scheduler'
 ,p_supported_ui_types => 'DESKTOP'
 ,p_image_prefix => '#PLUGIN_PREFIX#'
 ,p_standard_attributes => 'SOURCE_PLAIN'
 ,p_substitute_attributes => true
 ,p_subscribe_plugin_settings => true
 ,p_version_identifier => '1.0'
 ,p_about_url => 'www.tuladhar.net'
  );
null;
 
end;
/

 
prompt Component Export: REPORT TEMPLATE 66894130129341855744
 
prompt  ...report templates
--
prompt  ......report template 66894130129341855744
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" style="background-color: #FCD9D9;">#COLUMN_VALUE#</td>';

c2:=c2||'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" style="background-color: #d9fcd9;">#COLUMN_VALUE#</td>';

c3:=c3||'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>';

c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 66894130129341855744 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard - Logs borderless ',
  p_row_template1=> c1,
  p_row_template_condition1=> 'UPPER(:STATUS) = UPPER(''FAILED'')',
  p_row_template2=> c2,
  p_row_template_condition2=> 'UPPER(:STATUS) = UPPER(''SUCCEEDED'')',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table class="uReportContainer uBorderlessReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportBody">'||unistr('\000a')||
'<tr><td>'||unistr('\000a')||
'<table summary="#REGION_TITLE#" class="uReport uReportBorderless">',
  p_row_template_after_rows =>'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_before_column_heading=>'<thead>',
  p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>',
  p_after_column_heading=>'</thead>'||unistr('\000a')||
'<tbody>',
  p_row_template_display_cond1=>'NOT_CONDITIONAL',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_mouse_over=>'#F0F0F0',
  p_row_style_checked=>'#E8E8E8',
  p_theme_id  => 26,
  p_theme_class_id => 1,
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 66894130129341855744 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

 
prompt Component Export: TAB 66957077207746866761
 
prompt  ...Application Tabs
--
 
begin
 
wwv_flow_api.create_tab (
  p_id=> 66957077207746866761 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 20,
  p_tab_name=> 'Jobs',
  p_tab_text => 'Jobs',
  p_tab_step => 3,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_tab_comment  => '');
 
 
end;
/

--commit;
begin
execute immediate 'begin sys.dbms_session.set_nls( param => ''NLS_NUMERIC_CHARACTERS'', value => '''''''' || replace(wwv_flow_api.g_nls_numeric_chars,'''''''','''''''''''') || ''''''''); end;';
end;
/
set verify on
set feedback on
set define on
prompt  ...done
COMMIT;
