--
-- Creates the research paper module dotLRN applet
--
-- @author yon (yon@openforce.net)
-- @creation-date 2002-02-24
-- @version $Id$
--

declare
    foo                         integer;
begin

    -- create the implementation
    foo := acs_sc_impl.new (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_owner_name => 'dotlrn_research'
    );

    -- GetPrettyName
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'GetPrettyName',
        impl_alias => 'dotlrn_research::get_pretty_name',
        impl_pl => 'TCL'
    );

    -- AddApplet
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'AddApplet',
        impl_alias => 'dotlrn_research::add_applet',
        impl_pl => 'TCL'
    );

    -- AddAppletToCommunity
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'AddAppletToCommunity',
        impl_alias => 'dotlrn_research::add_applet_to_community',
        impl_pl => 'TCL'
    );

    -- RemoveApplet
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'RemoveApplet',
        impl_alias => 'dotlrn_research::remove_applet',
        impl_pl => 'TCL'
    );

    -- AddUser
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'AddUser',
        impl_alias => 'dotlrn_research::add_user',
        impl_pl => 'TCL'
    );

    -- AddUserToCommunity
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'AddUserToCommunity',
        impl_alias => 'dotlrn_research::add_user_to_community',
        impl_pl => 'TCL'
    );

    -- RemoveUser
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'RemoveUser',
        impl_alias => 'dotlrn_research::remove_user',
        impl_pl => 'TCL'
    );

    -- RemoveUserFromCommunity
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'RemoveUserFromCommunity',
        impl_alias => 'dotlrn_research::remove_user_from_community',
        impl_pl => 'TCL'
    );

    -- Add the binding
    acs_sc_binding.new (
        contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research'
    );

end;
/
show errors
