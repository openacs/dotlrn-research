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
-- Creates the dotLRN research paper module
--
-- @author yon (yon@openforce.net)
-- @creation-date 2002-02-24
-- @version $Id$
--

create table dotlrn_research_papers (
    community_id                constraint dotlrn_rp_community_id_fk
                                references dotlrn_communities (community_id)
                                constraint dotlrn_rp_community_id_nn
                                not null,
    file_id                     constraint dotlrn_rp_file_id_fk
                                references cr_revisions (revision_id)
                                constraint dotlrn_rp_file_id_nn
                                not null,
    constraint dotlrn_research_papers_pk
    primary key (community_id, file_id)
);

@@ research-portlet-create.sql;
@@ research-admin-portlet-create.sql;
@@ dotlrn-research-applet-create.sql
