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
