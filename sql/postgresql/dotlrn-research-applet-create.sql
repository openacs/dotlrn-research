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
-- Postgresql port adarsh@symphinity.com
--  
-- 11th July 2002
--

-- create the implementation
select acs_sc_impl__new (
        'dotlrn_applet',						--impl_contract_name
        'dotlrn_research',						--impl_name
        'dotlrn_research'						--impl_owner_name
);

-- GetPrettyName
select acs_sc_impl_alias__new (
        'dotlrn_applet',						--impl_contract_name
        'dotlrn_research',						--impl_name
        'GetPrettyName',						--impl_operation_name
        'dotlrn_research::get_pretty_name',		--impl_alias
        'TCL'									--impl_pl
);

-- AddApplet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_research',
        'AddApplet',
        'dotlrn_research::add_applet',
        'TCL'
    );

    -- RemoveApplet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_research',
        'RemoveApplet',
        'dotlrn_research::remove_applet',
        'TCL'
    );

    -- AddAppletToCommunity
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_research',
        'AddAppletToCommunity',
        'dotlrn_research::add_applet_to_community',
        'TCL'
    );

    -- RemoveAppletFromCommunity
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_research',
        'RemoveAppletFromCommunity',
        'dotlrn_research::remove_applet_from_community',
        'TCL'
    );

    -- AddUser
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_research',
        'AddUser',
        'dotlrn_research::add_user',
        'TCL'
    );

    -- RemoveUser
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_research',
        'RemoveUser',
        'dotlrn_research::remove_user',
        'TCL'
    );

    -- AddUserToCommunity
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_research',
        'AddUserToCommunity',
        'dotlrn_research::add_user_to_community',
        'TCL'
    );

    -- RemoveUserFromCommunity
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_research',
        'RemoveUserFromCommunity',
        'dotlrn_research::remove_user_from_community',
        'TCL'
    );

    -- AddPortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_research',
        'AddPortlet',
        'dotlrn_research::add_portlet',
        'TCL'
    );

    -- RemovePortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_research',
        'RemovePortlet',
        'dotlrn_research::remove_portlet',
        'TCL'
    );

    -- Clone
select acs_sc_impl_alias__new (
	'dotlrn_applet',
        'dotlrn_research',
        'Clone',
        'dotlrn_research::clone',
        'TCL'
    );

-- Add the binding
select acs_sc_binding__new (
        'dotlrn_applet',						--contract_name
        'dotlrn_research'						--impl_name
);
