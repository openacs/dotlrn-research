#
#  Copyright (C) 2001, 2002 OpenForce, Inc.
#
#  This file is part of dotLRN.
#
#  dotLRN is free software; you can redistribute it and/or modify it under the
#  terms of the GNU General Public License as published by the Free Software
#  Foundation; either version 2 of the License, or (at your option) any later
#  version.
#
#  dotLRN is distributed in the hope that it will be useful, but WITHOUT ANY
#  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
#  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
#  details.
#

# dotlrn-research/www/research-portlet.tcl

ad_page_contract {
    The display logic for the research portlet

    @author yon (yon@openforce.net)
    @version $Id$
} -properties {
    files_to_add:multirow
    files_to_remove:multirow
}

array set config $cf
set user_id [ad_conn user_id]
set community_id [dotlrn_community::get_community_id]
set party_id $config(party_id)

db_multirow files_to_add select_files_to_add {}
db_multirow files_to_remove select_files_to_remove {}

ad_return_template 
