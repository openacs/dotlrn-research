<?xml version="1.0"?>

<queryset>
<rdbms><type>oracle</type><version>8.1.6</version></rdbms>

    <fullquery name="select_files">
        <querytext>
            select fs_files.file_id,
                   fs_files.name,
                   fs_files.live_revision,
                   fs_files.type,
                   to_char(fs_files.last_modified, 'Mon DD YYYY HH24:MI') as last_modified,
                   fs_files.content_size,
                   (select site_node.url(site_nodes.node_id)
                    from site_nodes
                    where site_nodes.object_id = file_storage.get_package_id(fs_files.file_id)) as url
            from dotlrn_research_papers,
                 fs_files
            where dotlrn_research_papers.community_id = :community_id
            and dotlrn_research_papers.file_id = fs_files.live_revision
            order by name
        </querytext>
    </fullquery>

</queryset>
