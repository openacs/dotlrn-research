--
-- Creates the research paper module portlet
--
-- @author yon (yon@openforce.net)
-- @creation-date 2002-02-24
-- @version $Id$
--

declare  
    ds_id                       portal_datasources.datasource_id%TYPE;
    foo                         integer;
begin

    begin 
        select datasource_id
        into ds_id
        from portal_datasources
        where name = 'research_admin_portlet';
    exception when no_data_found then
        ds_id := null;
    end;

    if ds_id is not null then
        portal_datasource.delete(ds_id);
    end if;

    acs_sc_binding.delete(
        contract_name => 'portal_datasource',
        impl_name => 'research_admin_portlet'
    );

    foo := acs_sc_impl.delete_alias(
        impl_contract_name => 'portal_datasource',
        impl_name => 'research_admin_portlet',
        impl_operation_name => 'MyName'
    );

    foo := acs_sc_impl.delete_alias(
        impl_contract_name => 'portal_datasource',
        impl_name => 'research_admin_portlet',
        impl_operation_name => 'GetPrettyName'
    );

    foo := acs_sc_impl.delete_alias(
        impl_contract_name => 'portal_datasource',
        impl_name => 'research_admin_portlet',
        impl_operation_name => 'Link'
    );

    foo := acs_sc_impl.delete_alias(
        impl_contract_name => 'portal_datasource',
        impl_name => 'research_admin_portlet',
        impl_operation_name => 'AddSelfToPage'
    );

    foo := acs_sc_impl.delete_alias(
        impl_contract_name => 'portal_datasource',
        impl_name => 'research_admin_portlet',
        impl_operation_name => 'Show'
    );

    foo := acs_sc_impl.delete_alias(
        impl_contract_name => 'portal_datasource',
        impl_name => 'research_admin_portlet',
        impl_operation_name => 'Edit'
    );

    foo := acs_sc_impl.delete_alias(
        impl_contract_name => 'portal_datasource',
        impl_name => 'research_admin_portlet',
        impl_operation_name => 'RemoveSelfFromPage'
    );

    foo := acs_sc_impl.delete_alias(
        impl_contract_name => 'portal_datasource',
        impl_name => 'research_admin_portlet',
        impl_operation_name => 'MakeSelfAvailable'
    );

    foo := acs_sc_impl.delete_alias(
        impl_contract_name => 'portal_datasource',
        impl_name => 'research_admin_portlet',
        impl_operation_name => 'MakeSelfUnavailable'
    );

    acs_sc_impl.delete(
        impl_contract_name => 'portal_datasource',
        impl_name => 'research_admin_portlet'
    );
end;
/
show errors
