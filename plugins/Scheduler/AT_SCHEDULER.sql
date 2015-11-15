--------------------------------------------------------
--  File created - Sunday-November-15-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package AT_SCHEDULER
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PLAYGROUND"."AT_SCHEDULER" as
 
type t_job_action_arg is record(
    argument_name varchar2(100),
    argument_type varchar2(100),
    default_value varchar2(100),
    current_value varchar2(4000)
);
 
/** 
 * Check if job exists 
 * @param p_job_name name of the scheduler job
 */
function exists_job (p_job_name in user_scheduler_jobs.job_name%type) 
return boolean;
 
 
/**
 * add / save job to scheduler jobs
 * @param p_job_name name of the scheduler job
 * @param p_job_name action of the scheduler job
 */ 
function add_job (p_job_name in user_scheduler_jobs.job_name%type
                  , p_job_action in user_scheduler_jobs.job_action%type
                  , p_start_date in user_scheduler_jobs.start_date%type
                  , p_repeat_interval in user_scheduler_jobs.repeat_interval%type
                  , p_end_date in user_scheduler_jobs.end_date%type
                  , p_enabled in boolean := false
                  , p_argument_list in t_job_action_arg := null
                  , p_comments in user_scheduler_jobs.comments%type
                  ) 
return boolean;
 
/**
 * To force immediate job execution 
 * @param p_job_name name of the scheduler job
 */ 
procedure execute_job (p_job_name in user_scheduler_jobs.job_name%type);
 
/**
 * Remove job from scheduler by name 
 * @param p_job_name name of the scheduler job
 */ 
procedure remove_job (p_job_name in user_scheduler_jobs.job_name%type) ;
 
/**
 * Indicates whether the job is enabled (TRUE) or not (FALSE)
 * @param p_job_name name of the scheduler job
 */ 
function is_actief_job (p_job_name in user_scheduler_jobs.job_name%type) 
return boolean;
 
/**
 * Enable job from scheduler by name 
 * @param p_job_name name of the scheduler job
 */ 
procedure enable_job (p_job_name in user_scheduler_jobs.job_name%type);
 
/**
 * Disable job from scheduler by name 
 * @param p_job_name name of the scheduler job
 */ 
procedure disable_job (p_job_name in user_scheduler_jobs.job_name%type);
 
 /**
 * Dummy procedure for testing 
 */ 
procedure dummy_proc;
 
end;

/
--------------------------------------------------------
--  DDL for Package Body AT_SCHEDULER
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "PLAYGROUND"."AT_SCHEDULER" as
 
/** 
 * Check if job exists 
 * @param p_job_name name of the scheduler job
 */
function exists_job (p_job_name in user_scheduler_jobs.job_name%type) 
return boolean is 
    l_found integer;
begin
    select decode(count(1), 0, 0, 1) into l_found 
    from   user_scheduler_jobs
    where  (job_name = p_job_name);
    return (l_found = 1);
end exists_job;
 
/**
 * add to scheduler jobs
 * @param p_job_name name of the scheduler job
 * @param p_job_name action of the scheduler job
 */ 
function add_job (p_job_name in user_scheduler_jobs.job_name%type
                  , p_job_action in user_scheduler_jobs.job_action%type
                  , p_start_date in user_scheduler_jobs.start_date%type
                  , p_repeat_interval in user_scheduler_jobs.repeat_interval%type
                  , p_end_date in user_scheduler_jobs.end_date%type
                  , p_enabled in boolean := false
                  , p_argument_list in t_job_action_arg := null
                  , p_comments in user_scheduler_jobs.comments%type
                  ) 
return boolean is
begin
    if p_job_name is not null then
        -- remove existing job by name
        -- remove_job(p_job_name);
        if exists_job(p_job_name) then 
           raise_application_error (-20000, 'Job already exists');
        else  
           dbms_scheduler.create_job (job_name                => p_job_name,
                                      job_type             => 'STORED_PROCEDURE',
                                      job_action           => p_job_action,
                                      start_date           => p_start_date,
                                      repeat_interval      => p_repeat_interval, 
                                      end_date             => p_end_date,
                                      enabled              => p_enabled,
                                      auto_drop            => false,
                                      comments             => p_comments);
 
           dbms_scheduler.set_attribute (name => p_job_name, attribute => 'logging_level', value => dbms_scheduler.logging_full);
        end if;
    end if;
    return true;
end add_job;
 
/**
 * To force immediate job execution 
 * @param p_job_name name of the scheduler job
 */ 
procedure execute_job (p_job_name in user_scheduler_jobs.job_name%type) is
begin
    if exists_job(p_job_name) then
        dbms_scheduler.run_job(p_job_name);
    end if;
end execute_job;
 
/**
 * Remove job from scheduler by name 
 * @param p_job_name name of the scheduler job
 */ 
procedure remove_job (p_job_name in user_scheduler_jobs.job_name%type) is
begin
    if exists_job(p_job_name) then
        dbms_scheduler.drop_job(p_job_name, true);
    end if;
end remove_job;
 
/**
 * Indicates whether the job is enabled (TRUE) or not (FALSE)
 * @param p_job_name name of the scheduler job
 */ 
function is_actief_job (p_job_name in user_scheduler_jobs.job_name%type) 
return boolean is 
    l_found integer;
begin
    select decode(count(1), 0, 0, 1) into l_found 
    from   user_scheduler_jobs job
    where  (job.job_name = p_job_name)
    and    job.enabled = 'TRUE';
    return (l_found = 1);
end is_actief_job;
 
/**
 * Enable job from scheduler by name 
 * @param p_job_name name of the scheduler job
 */ 
procedure enable_job (p_job_name in user_scheduler_jobs.job_name%type) is
begin
    if exists_job(p_job_name) then
        dbms_scheduler.enable (p_job_name);
    end if;
end enable_job;
 
 /**
 * Disable job from scheduler by name 
 * @param p_job_name name of the scheduler job
 */ 
procedure disable_job (p_job_name in user_scheduler_jobs.job_name%type) as
begin
    if exists_job(p_job_name) then
        dbms_scheduler.disable (p_job_name);
    end if;
end disable_job;
 
 /**
 * Dummy procedure for testing 
 */ 
procedure dummy_proc as
begin
     --dbms_lock.sleep(60);   
     null;
end dummy_proc ;
 
end;

/
