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
<if @files:rowcount@ eq 0>
  <font size="-1">No research papers</font>
</if>
<else>
  <table border="0" cellpadding="2" cellspacing="2" width="100%">
<multiple name="files">
    <tr>
      <td width="5"><img border="0" src="@files.url@graphics/file.gif" width="15" height="13"></td>
      <td><a href="@files.url@file?file_id=@files.file_id@">@files.name@</a></td>
      <td>
        <small>[&nbsp;
          <a href="@files.url@download/index?version_id=@files.live_revision@">
            download
          </a>
        &nbsp;]</small>
      </td>
    </tr>  
</multiple>
  </table>
</else>
</if>
<else>
  &nbsp;
</else>
