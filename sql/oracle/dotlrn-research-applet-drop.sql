--
-- Drops the research paper module dotLRN applet
--
-- @author yon (yon@openforce.net)
-- @creation-date 2002-02-24
-- @version $Id$
--

declare
    foo                         integer;
begin

    acs_sc_binding.delete (
        contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research'
    );

    -- GetPrettyName
    foo := acs_sc_impl.delete_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'GetPrettyName'
    );

    -- AddApplet
    foo := acs_sc_impl.delete_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'AddApplet'
    );

    -- AddAppletToCommunity
    foo := acs_sc_impl.delete_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'AddAppletToCommunity'
    );

    -- RemoveApplet
    foo := acs_sc_impl.delete_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'RemoveApplet'
    );

    -- AddUser
    foo := acs_sc_impl.delete_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'AddUser'
    );

    -- AddUserToCommunity
    foo := acs_sc_impl.delete_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'AddUserToCommunity'
    );

    -- RemoveUser
    foo := acs_sc_impl.delete_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'RemoveUser'
    );

    -- RemoveUserFromCommunity
    foo := acs_sc_impl.delete_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'RemoveUserFromCommunity'
    );

    acs_sc_impl.delete (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research'
    );

end;
/
show errors
