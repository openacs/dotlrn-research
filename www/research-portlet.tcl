# dotlrn-research/www/research-portlet.tcl

ad_page_contract {
    The display logic for the research portlet

    @author yon (yon@openforce.net)
    @version $Id$
} -properties {
    files:multirow
}

array set config $cf
set user_id [ad_conn user_id]
set party_id $config(party_id)

db_multirow files select_files {}

ad_return_template 
