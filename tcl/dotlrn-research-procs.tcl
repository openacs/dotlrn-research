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

ad_library {

    Procs to set up the dotLRN research module applet

    @author yon (yon@openforce.net)
    @creation-date 2002-02-25
    @version $Id$

}

namespace eval dotlrn_research {

    ad_proc -public applet_key {
    } {
        get the package_key this applet deals with
    } {
        return "dotlrn_research"
    }

    ad_proc -public package_key {
    } {
        get the package_key this applet deals with
    } {
        return "dotlrn-research"
    }

    ad_proc portal_element_key {
    } {
        return the portal element key
    } {
        return "research-portlet"
    }

    ad_proc -public get_pretty_name {
    } {
        returns the pretty name
    } {
        return "dotLRN Research Papers"
    }

    ad_proc -public get_user_default_page {} {
        return the user default page to add the portlet to
    } {
        return "Research Papers"
    }

    ad_proc -public add_applet {
    } {
        Used for one-time init - must be repeatable!
    } {
        dotlrn_applet::add_applet_to_dotlrn -applet_key [applet_key]
    }

    ad_proc -public remove_applet {
    } {
        Used for one-time destroy - must be repeatable!
    } {
    }

    ad_proc -public add_applet_to_community {
        community_id
    } {
        Add the research paper applet to a specifc dotlrn community
    } {
        # get the portal_template_id by callback
        set pt_id [dotlrn_community::get_portal_template_id $community_id]

        research_portlet::make_self_available $pt_id

        if {[dotlrn_community::dummy_comm_p -community_id $community_id]} {
            research_portlet::add_self_to_page $pt_id "" $community_id
            return
        }

	set instance_id [dotlrn::instantiate_and_mount \
            -mount_point "research-papers" $community_id [package_key]]

        research_portlet::add_self_to_page $pt_id "" $community_id

        dotlrn_research_admin::add_applet_to_community $community_id
    }

    ad_proc -public remove_applet_from_community {
        community_id
    } {
        remove the applet from the community
    } {
    }

    ad_proc -public add_user {
        user_id
    } {
        One time user-specfic init
    } {
    }

    ad_proc -public remove_user {
        user_id
    } {
    } {
    }

    ad_proc -public add_user_to_community {
        community_id
        user_id
    } {
        Add a user to a to a specifc dotlrn community
    } {
        # we have a per user comm portal
        set portal_id [dotlrn_community::get_portal_id $community_id $user_id]

	if { [exists_and_not_null $portal_id] } {
            research_portlet::make_self_available $portal_id
            research_portlet::add_self_to_page $portal_id "" $community_id
        }
    }

    ad_proc -public remove_user_from_community {
        community_id
        user_id
    } {
        Remove a user from a community
    } {
        # Get the portal_id
        set portal_id [dotlrn_community::get_portal_id $community_id $user_id]

        # Remove the portal element
        research_portlet::remove_self_from_page $portal_id "" $user_id

        # Buh Bye.
        research_portlet::make_self_unavailable $portal_id
    }

}
