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
-- postgresql port adarsh@symphinity.com
--
-- 11th July 2002
--

select acs_sc_impl__new (
    'dotlrn_applet',
    'dotlrn_research',
    'dotlrn_research'
);

select acs_sc_impl_alias__new (
    'dotlrn_applet',
    'dotlrn_research',
    'GetPrettyName',
    'dotlrn_research::get_pretty_name',
    'TCL'
);

select acs_sc_impl_alias__new (
    'dotlrn_applet',
    'dotlrn_research',
    'AddApplet',
    'dotlrn_research::add_applet',
    'TCL'
);

select acs_sc_impl_alias__new (
    'dotlrn_applet',
    'dotlrn_research',
    'RemoveApplet',
    'dotlrn_research::remove_applet',
    'TCL'
);

select acs_sc_impl_alias__new (
    'dotlrn_applet',
    'dotlrn_research',
    'AddAppletToCommunity',
    'dotlrn_research::add_applet_to_community',
    'TCL'
);

select acs_sc_impl_alias__new (
    'dotlrn_applet',
    'dotlrn_research',
    'RemoveAppletFromCommunity',
    'dotlrn_research::remove_applet_from_community',
    'TCL'
);

select acs_sc_impl_alias__new (
    'dotlrn_applet',
    'dotlrn_research',
    'AddUser',
    'dotlrn_research::add_user',
    'TCL'
);

select acs_sc_impl_alias__new (
    'dotlrn_applet',
    'dotlrn_research',
    'RemoveUser',
    'dotlrn_research::remove_user',
    'TCL'
);

select acs_sc_impl_alias__new (
    'dotlrn_applet',
    'dotlrn_research',
    'AddUserToCommunity',
    'dotlrn_research::add_user_to_community',
    'TCL'
);

select acs_sc_impl_alias__new (
    'dotlrn_applet',
    'dotlrn_research',
    'RemoveUserFromCommunity',
    'dotlrn_research::remove_user_from_community',
    'TCL'
);

select acs_sc_impl_alias__new (
    'dotlrn_applet',
    'dotlrn_research',
    'AddPortlet',
    'dotlrn_research::add_portlet',
    'TCL'
);

select acs_sc_impl_alias__new (
    'dotlrn_applet',
    'dotlrn_research',
    'RemovePortlet',
    'dotlrn_research::remove_portlet',
    'TCL'
);

select acs_sc_impl_alias__new (
    'dotlrn_applet',
    'dotlrn_research',
    'Clone',
    'dotlrn_research::clone',
    'TCL'
);

select acs_sc_impl_alias__new (
    'dotlrn_applet',
    'dotlrn_research',
    'ChangeEventHandler',
    'dotlrn_research::change_event_handler',
    'TCL'
);

select acs_sc_binding__new (
    'dotlrn_applet',
    'dotlrn_research'
);
