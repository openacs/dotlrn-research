<if @config.shaded_p@ ne "t">
<if @files:rowcount@ eq 0>
  No research papers
</if>
<else>
  <table border="0" cellpadding="2" cellspacing="2" width="100%">
<multiple name="files">
    <tr>
      <td width="5"><img border="0" src="@files.url@graphics/file.gif" width="15" height="13"></img></td>
      <td><a href="@files.url@file?file_id=@files.file_id@">@files.name@</a></td>
      <td>
        <small>(&nbsp;
          <a href="@files.url@download/@files.name@?version_id=@files.live_revision@">
            download
          </a>
        &nbsp;)</small>
      </td>
    </tr>  
</multiple>
  </table>
</else>
</if>
<else>
  &nbsp;
</else>
