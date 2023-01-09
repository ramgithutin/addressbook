<html>
    <body>
        <cfoutput>
            <table class="whiteBackground margin1010" >
                <tr class="borderNone">
                    <th class="column blue"> </th>
                    <th class="column blue">NAME</th>
                    <th class="column blue">EMAIL</th>
                    <th class="column blue">PHONE NUMBER</th>
                    <th class="column blue"></th>
                    <th class="column blue"></th>
                    <th class="column blue"></th>
                </tr>
                <cfinvoke  method="viewTabel" component="components/component" returnVariable="data">
                <cfloop query="data">
                    <tr class="borderNone">
                        <td class="column blue borderNone justfyCenter dflex"> 
                            <cfset var=data.Gender>
                            <img src="assets/#var#.png" class="googleImg">
                        </td>
                        <td class="column blue borderNone">#data.First_Name# #data.Last_Name#</td>
                        <td class="column blue borderNone">#data.email#</td>
                        <td class="column blue borderNone">#data.phone_no#</td>
                        <td class="column blue borderNone">
                            <button class="login">EDIT<button>
                        </td>
                        <td class="column blue borderNone">
                            <a href="components/delete.cfc?method=deletepage&name=#data.First_Name#"><button class="login">DELETE<button></a>
                        </td>
                        <td class="column blue borderNone">
                            <button class="login" onclick="document.getElementById('id02').style.display='block'">VIEW<button>
                        </td>
                    </tr>
                </cfloop>
            </table>
        </cfoutput>
    </body>
</html>