--
-- Creates the research paper module portlet
--
-- @author yon (yon@openforce.net)
-- @creation-date 2002-02-24
-- @version $Id$
--

declare  
    ds_id                       portal_datasources.datasource_id%TYPE;
begin

    begin 
        select datasource_id
        into ds_id
        from portal_datasources
        where name = 'research_portlet';
    exception when no_data_found then
        ds_id := null;
    end;

    if ds_id is not null then
        portal_datasource.delete(ds_id);
    end if;

    -- drop the hooks
    foo := acs_sc_impl.delete_alias(
        'portal_datasource',
        'research_portlet',
        'MyName'
    );

    foo := acs_sc_impl.delete_alias(
        'portal_datasource',
        'research_portlet',
        'GetPrettyName'
    );

    foo := acs_sc_impl.delete_alias(
        'portal_datasource',
        'research_portlet',
        'Link'
    );

    foo := acs_sc_impl.delete_alias(
        'portal_datasource',
        'research_portlet',
        'AddSelfToPage'
    );

    foo := acs_sc_impl.delete_alias(
        'portal_datasource',
        'research_portlet',
        'Show'
    );

    foo := acs_sc_impl.delete_alias(
        'portal_datasource',
        'research_portlet',
        'Edit'
    );

    foo := acs_sc_impl.delete_alias(
        'portal_datasource',
        'research_portlet',
        'RemoveSelfFromPage'
    );

    foo := acs_sc_impl.delete_alias(
        'portal_datasource',
        'research_portlet',
        'MakeSelfAvailable'
    );

    foo := acs_sc_impl.delete_alias(
        'portal_datasource',
        'research_portlet',
        'MakeSelfUnavailable'
    );

    -- Drop the binding
    acs_sc_binding.delete(
        contract_name => 'portal_datasource',
        impl_name => 'research_portlet'
    );

    -- drop the impl
    foo := acs_sc_impl.delete(
        'portal_datasource',
        'research_portlet'
    );
end;
/
show errors
