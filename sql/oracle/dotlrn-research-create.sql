--
-- Creates the research paper module dotLRN applet
--
-- @author yon (yon@openforce.net)
-- @creation-date 2002-02-24
-- @version $Id$
--

@@ research-portlet-create.sql;

declare
    foo                         integer;
begin
    -- create the implementation
    foo := acs_sc_impl.new (
        'dotlrn_applet',
        'dotlrn_research',
        'dotlrn_research'
    );

    -- GetPrettyName
    foo := acs_sc_impl.new_alias (
        'dotlrn_applet',
        'dotlrn_research',
        'GetPrettyName',
        'dotlrn_research::get_pretty_name',
        'TCL'
    );

    -- AddApplet
    foo := acs_sc_impl.new_alias (
        'dotlrn_applet',
        'dotlrn_research',
        'AddApplet',
        'dotlrn_research::add_applet',
        'TCL'
    );

    -- AddAppletToCommunity
    foo := acs_sc_impl.new_alias (
        'dotlrn_applet',
        'dotlrn_research',
        'AddAppletToCommunity',
        'dotlrn_research::add_applet_to_community',
        'TCL'
    );

    -- RemoveApplet
    foo := acs_sc_impl.new_alias (
        'dotlrn_applet',
        'dotlrn_research',
        'RemoveApplet',
        'dotlrn_research::remove_applet',
        'TCL'
    );

    -- AddUser
    foo := acs_sc_impl.new_alias (
        'dotlrn_applet',
        'dotlrn_research',
        'AddUser',
        'dotlrn_research::add_user',
        'TCL'
    );

    -- AddUserToCommunity
    foo := acs_sc_impl.new_alias (
        'dotlrn_applet',
        'dotlrn_research',
        'AddUserToCommunity',
        'dotlrn_research::add_user_to_community',
        'TCL'
    );

    -- RemoveUser
    foo := acs_sc_impl.new_alias (
        'dotlrn_applet',
        'dotlrn_research',
        'RemoveUser',
        'dotlrn_research::remove_user',
        'TCL'
    );

    -- RemoveUserFromCommunity
    foo := acs_sc_impl.new_alias (
        'dotlrn_applet',
        'dotlrn_research',
        'RemoveUserFromCommunity',
        'dotlrn_research::remove_user_from_community',
        'TCL'
    );

    -- Add the binding
    acs_sc_binding.new (
        contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research'
    );
end;
/
show errors
