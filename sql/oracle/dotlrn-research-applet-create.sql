--
--  Copyright (C) 2001, 2002 OpenForce, Inc.
--
--  This file is part of dotLRN.
--
--  dotLRN is free software; you can redistribute it and/or modify it under the
--  terms of the GNU General Public License as published by the Free Software
--  Foundation; either version 2 of the License, or (at your option) any later
--  version.
--
--  dotLRN is distributed in the hope that it will be useful, but WITHOUT ANY
--  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
--  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
--  details.
--

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

    -- RemoveApplet
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'RemoveApplet',
        impl_alias => 'dotlrn_research::remove_applet',
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

    -- RemoveAppletFromCommunity
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'RemoveAppletFromCommunity',
        impl_alias => 'dotlrn_research::remove_applet_from_community',
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

    -- RemoveUser
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'RemoveUser',
        impl_alias => 'dotlrn_research::remove_user',
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


    -- AddPortlet
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'AddPortlet',
        impl_alias => 'dotlrn_research::add_portlet',
        impl_pl => 'TCL'
    );

    -- RemovePortlet
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'RemovePortlet',
        impl_alias => 'dotlrn_research::remove_portlet',
        impl_pl => 'TCL'
    );

    -- Clone
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_research',
        impl_operation_name => 'Clone',
        impl_alias => 'dotlrn_research::clone',
        impl_pl => 'TCL'
    );

end;
/
show errors
