ad_library {

    Procs to set up the dotLRN research module applet

    @author yon (yon@openforce.net)
    @creation-date 2002-02-25
    @version $Id$

}

namespace eval dotlrn_research_admin {

    ad_proc -public applet_key {
    } {
        get the package_key this applet deals with
    } {
        return "dotlrn_research_admin"
    }

    ad_proc -public package_key {
    } {
        get the package_key this applet deals with
    } {
        return "file-storage"
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

    ad_proc -public add_applet_to_community {
        community_id
    } {
        Add the research paper applet to a specifc dotlrn community
    } {
        # get the portal_template_id by callback
        set pt_id [dotlrn_community::get_community_admin_portal_id $community_id]

        research_admin_portlet::make_self_available $pt_id
        research_admin_portlet::add_self_to_page $pt_id "" $community_id
    }

    ad_proc -public remove_applet {
        community_id
        package_id
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

    ad_proc -public add_user_to_community {
        community_id
        user_id
    } {
        Add a user to a to a specifc dotlrn community
    } {
        # Get the portal_id by callback
        set portal_id [dotlrn_community::get_portal_id $community_id $user_id]

        # Call the portal element to be added correctly
        # Make research paper applet available at community-user page level
        research_admin_portlet::add_self_to_page $portal_id "" $community_id
    }

    ad_proc -public remove_user {
        user_id
    } {
    } {
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
        research_admin_portlet::remove_self_from_page $portal_id "" $party_id

        # Buh Bye.
        research_admin_portlet::make_self_unavailable $portal_id
    }

}
