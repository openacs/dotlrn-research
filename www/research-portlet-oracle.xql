<?xml version="1.0"?>

<queryset>
<rdbms><type>oracle</type><version>8.1.6</version></rdbms>

<fullquery name="select_files">
    <querytext>
        select cr_items.item_id as file_id,
               cr_items.name as name,
               cr_items.live_revision as file_live_rev,
               cr_revisions.mime_type as type,
               to_char(acs_objects.last_modified,'YYYY-MM-DD HH24:MI') as last_modified,
               cr_revisions.content_length as content_size,
               (select site_node.url(site_nodes.node_id)
                from site_nodes
                where site_nodes.object_id = get_package_id(cr_items.item_id)) as url
        from cr_items,
             cr_revisions,
             acs_objects,
             acs_permissions
        where cr_items.content_type = 'file_storage_object'
        and cr_items.item_id = acs_objects.object_id
        and cr_items.live_revision = cr_revisions.revision_id
        and acs_permissions.object_id = cr_items.live_revision
        and acs_permissions.grantee_id = :party_id
        and acs_permissions.privilege = 'read'
        order by name
    </querytext>
</fullquery>

</queryset>
