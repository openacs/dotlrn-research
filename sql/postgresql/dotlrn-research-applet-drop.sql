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
-- Drops the research paper module dotLRN applet
--
-- @author yon (yon@openforce.net)
-- @creation-date 2002-02-24
-- @version $Id$
--
-- postgresql port adarsh@symphinity.com
--
-- 11th July 2002
--

select acs_sc_binding__delete (
    'dotlrn_applet',
    'dotlrn_research'
);

select acs_sc_impl_alias__delete (
    'dotlrn_applet',
    'dotlrn_research',
    'GetPrettyName'
);

select acs_sc_impl_alias__delete (
    'dotlrn_applet',
    'dotlrn_research',
    'AddApplet'
);

select acs_sc_impl_alias__delete (
    'dotlrn_applet',
    'dotlrn_research',
    'RemoveApplet'
);

select acs_sc_impl_alias__delete (
    'dotlrn_applet',
    'dotlrn_research',
    'AddAppletToCommunity'
);

select acs_sc_impl_alias__delete (
    'dotlrn_applet',
    'dotlrn_research',
    'RemoveAppletFromCommunity'
);

select acs_sc_impl_alias__delete (
    'dotlrn_applet',
    'dotlrn_research',
    'AddUser'
);

select acs_sc_impl_alias__delete (
    'dotlrn_applet',
    'dotlrn_research',
    'RemoveUser'
);

select acs_sc_impl_alias__delete (
    'dotlrn_applet',
    'dotlrn_research',
    'AddUserToCommunity'
);

select acs_sc_impl_alias__delete (
    'dotlrn_applet',
    'dotlrn_research',
    'RemoveUserFromCommunity'
);

select acs_sc_impl_alias__delete (
    'dotlrn_applet',
    'dotlrn_research',
    'AddPortlet'
);

select acs_sc_impl_alias__delete (
    'dotlrn_applet',
    'dotlrn_research',
    'RemovePortlet'
);

select acs_sc_impl_alias__delete (
    'dotlrn_applet',
    'dotlrn_research',
    'Clone'
);

select acs_sc_impl__delete (
    'dotlrn_applet',
    'dotlrn_research'
);
