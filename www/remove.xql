<?xml version="1.0"?>
<!--

  Copyright (C) 2001, 2002 OpenForce, Inc.

  This file is part of dotLRN.

  dotLRN is free software; you can redistribute it and/or modify it under the
  terms of the GNU General Public License as published by the Free Software
  Foundation; either version 2 of the License, or (at your option) any later
  version.

  dotLRN is distributed in the hope that it will be useful, but WITHOUT ANY
  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
  details.

-->


<queryset>

    <fullquery name="remove_file_from_community">
        <querytext>
            delete
            from dotlrn_research_papers
            where community_id = :community_id
            and file_id = :file_id
        </querytext>
    </fullquery>

</queryset>
