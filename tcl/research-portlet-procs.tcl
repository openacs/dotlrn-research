# dotlrn-research/tcl/research-portlet-procs.tcl

ad_library {

    Procedures to support the research module portlet

    @author yon (yon@openforce.net)
    @creation-date 2002-02-24
    @version $Id$

}

namespace eval research_portlet {

    ad_proc -private my_package_key {
    } {
        return "dotlrn-research"
    }

    ad_proc -private my_name {
    } {
        return "research_portlet"
    }

    ad_proc -public get_pretty_name {
    } {
	return "Research Papers"
    }

    ad_proc -public link {
    } {
	return "file-storage"
    }

    ad_proc -public add_self_to_page {
        {-page_id ""}
	portal_id
	instance_id
        party_id
    } {
        Adds a research portlet element to the specified page.

        @param page_id The page to add self to
	@param portal_id The portal to add self to
        @param instance_id XXX DO NOT KNOW WHAT THIS IS
        @param party_id The party for which to display research papers

	@return element_id The new element's id
    } {
        return [portal::add_element_or_append_id \
            -portal_id $portal_id \
            -page_id $page_id \
            -portlet_name [my_name] \
            -pretty_name [get_pretty_name] \
            -key "party_id" \
            -value_id $party_id
        ]
    }

    ad_proc -public remove_self_from_page {
	portal_id
	instance_id
        party_id
    } {
        Removes a research portlet element from the specified page.

        @param portal_id The page to remove self from
        @param instance_id XXX DO NOT KNOW WHAT THIS IS
        @param party_id The party for which to display research papers
    } {
        portal::remove_element_or_remove_id \
            -portal_id $portal_id \
            -portlet_name [my_name] \
            -key "party_id" \
            -value_id $party_id
    }

    ad_proc -public make_self_available {
 	portal_id
    } {
 	Wrapper for the portal:: proc
 	
 	@param portal_id
    } {
 	portal::make_datasource_available \
            $portal_id [portal::get_datasource_id [my_name]]
    }

    ad_proc -public make_self_unavailable {
	portal_id
    } {
	Wrapper for the portal:: proc
	
	@param portal_id
    } {
	portal::make_datasource_unavailable \
            $portal_id [portal::get_datasource_id [my_name]]
    }

    ad_proc -public show {
        cf
    } {
	 Display the portal element

	 @param cf A config array as a list

	 @return HTML string
    } {
        # no return call required with the helper proc
        portal::show_proc_helper \
            -template_src "research-portlet" \
            -package_key [my_package_key] \
            -config_list $cf
    }

    ad_proc -public edit {
    } {
	return {}
    }

}
