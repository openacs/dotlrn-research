<%

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

%>

<if @config.shaded_p@ ne "t">
<if @files_to_add:rowcount@ eq 0>
  <p>No research papers to add</p>
</if>
<else>
  <ul>
<multiple name="files_to_add">
    <p></p>
    <li>
      <img border="0" src="@files_to_add.url@graphics/file.gif" width="15" height="13">
      &nbsp;
      @files_to_add.name@
      &nbsp;
      <small>[&nbsp;
        <a href="@files_to_add.url@download/index?version_id=@files_to_add.live_revision@">
          download
        </a>
        &nbsp;|&nbsp;
        <a href="research-papers/add?file_id=@files_to_add.live_revision@">add to community</a>
      &nbsp;]</small>
  </li>  
</multiple>
  </ul>
</else>
<if @files_to_remove:rowcount@ eq 0>
  <p>No research papers to remove</p>
</if>
<else>
  <ul>
<multiple name="files_to_remove">
    <p></p>
    <li>
      <img border="0" src="@files_to_remove.url@graphics/file.gif" width="15" height="13">
      &nbsp;
      @files_to_remove.name@
      &nbsp;
      <small>[&nbsp;
        <a href="@files_to_remove.url@download/index?version_id=@files_to_remove.live_revision@">
          download
        </a>
        &nbsp;|&nbsp;
        <a href="research-papers/remove?file_id=@files_to_remove.live_revision@">remove from community</a>
      &nbsp;]</small>
  </li>  
</multiple>
  </ul>
</else>
</if>
<else>
  &nbsp;
</else>
