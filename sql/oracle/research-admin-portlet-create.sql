--
-- Creates the research paper module portlet
--
-- @author yon (yon@openforce.net)
-- @creation-date 2002-02-24
-- @version $Id$
--

declare
    ds_id portal_datasources.datasource_id%TYPE;
    foo integer;
begin

    ds_id := portal_datasource.new(
        name => 'research_admin_portlet',
        description => 'Displays a list of research papers'
    );

    --  the standard 4 params
    -- shadeable_p
    portal_datasource.set_def_param(
        datasource_id => ds_id,
        config_required_p => 't',
        configured_p => 't',
        key => 'shadeable_p',
        value => 't'
    );

    -- hideable_p
    portal_datasource.set_def_param(
        datasource_id => ds_id,
        config_required_p => 't',
        configured_p => 't',
        key => 'hideable_p',
        value => 't'
    );

    -- user_editable_p
    portal_datasource.set_def_param(
        datasource_id => ds_id,
        config_required_p => 't',
        configured_p => 't',
        key => 'user_editable_p',
        value => 'f'
    );

    -- shaded_p
    portal_datasource.set_def_param(
        datasource_id => ds_id,
        config_required_p => 't',
        configured_p => 't',
        key => 'shaded_p',
        value => 'f'
    );

    -- link_hideable_p
    portal_datasource.set_def_param(
        datasource_id => ds_id,
        config_required_p => 't',
        configured_p => 't',
        key => 'link_hideable_p',
        value => 't'
    );

    -- party_id
    portal_datasource.set_def_param(
        datasource_id => ds_id,
        config_required_p => 't',
        configured_p => 'f',
        key => 'party_id',
        value => ''
    );

    -- create the implementation
    foo := acs_sc_impl.new(
        'portal_datasource',
        'research_admin_portlet',
        'research_admin_portlet'
    );

    -- add all the hooks
    foo := acs_sc_impl.new_alias(
        'portal_datasource',
        'research_admin_portlet',
        'MyName',
        'research_admin_portlet::my_name',
        'TCL'
    );

    foo := acs_sc_impl.new_alias(
        'portal_datasource',
        'research_admin_portlet',
        'GetPrettyName',
        'research_admin_portlet::get_pretty_name',
        'TCL'
    );

    foo := acs_sc_impl.new_alias(
        'portal_datasource',
        'research_admin_portlet',
        'Link',
        'research_admin_portlet::link',
        'TCL'
    );

    foo := acs_sc_impl.new_alias(
        'portal_datasource',
        'research_admin_portlet',
        'AddSelfToPage',
        'research_admin_portlet::add_self_to_page',
        'TCL'
    );

    foo := acs_sc_impl.new_alias(
        'portal_datasource',
        'research_admin_portlet',
        'Show',
        'research_admin_portlet::show',
        'TCL'
    );

    foo := acs_sc_impl.new_alias(
        'portal_datasource',
        'research_admin_portlet',
        'Edit',
        'research_admin_portlet::edit',
        'TCL'
    );

    foo := acs_sc_impl.new_alias(
        'portal_datasource',
        'research_admin_portlet',
        'RemoveSelfFromPage',
        'research_admin_portlet::remove_self_from_page',
        'TCL'
    );

    foo := acs_sc_impl.new_alias(
        'portal_datasource',
        'research_admin_portlet',
        'MakeSelfAvailable',
        'research_admin_portlet::make_self_available',
        'TCL'
    );

    foo := acs_sc_impl.new_alias(
        'portal_datasource',
        'research_admin_portlet',
        'MakeSelfUnavailable',
        'research_admin_portlet::make_self_unavailable',
        'TCL'
    );

    -- Add the binding
    acs_sc_binding.new(
        contract_name => 'portal_datasource',
        impl_name => 'research_admin_portlet'
    );

end;
/
show errors