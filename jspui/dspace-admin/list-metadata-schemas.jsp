<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>

<%--
  - Display list of DC schemas
  -
  - Attributes:
  -
  -   formats - the DC formats in the system (MetadataValue[])
  --%>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"
    prefix="fmt" %>


<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<%@ page import="javax.servlet.jsp.jstl.fmt.LocaleSupport" %>

<%@ page import="org.dspace.content.MetadataSchema" %>


<%
    MetadataSchema[] schemas =
        (MetadataSchema[]) request.getAttribute("schemas");
%>

<dspace:layout style="submission" titlekey="jsp.dspace-admin.list-metadata-schemas.title"
               navbar="admin"
               locbar="link"
               parenttitlekey="jsp.administer"
               parentlink="/dspace-admin">


        <h1><fmt:message key="jsp.dspace-admin.list-metadata-schemas.title"/>
        <dspace:popup page="<%= LocaleSupport.getLocalizedMessage(pageContext, \"help.site-admin\") + \"#dublincore\"%>"><i class="fas fa-question-circle fa-xs"></i></dspace:popup>
		</h1>
  
<%
String error = (String)request.getAttribute("error");
if (error!=null) { 
%>
    <p class="alert alert-danger">
    	<%=error%>
    </p>
<% } %>
  

    <table class="table" width="500">
        <tr>
            <th class="oddRowOddCol"><strong><fmt:message key="jsp.general.id" /></strong></th>
            <th class="oddRowEvenCol"><strong><fmt:message key="jsp.dspace-admin.list-metadata-schemas.namespace"/></strong></th> 
            <th class="oddRowOddCol"><strong><fmt:message key="jsp.dspace-admin.list-metadata-schemas.name"/></strong></th> 
            <th class="oddRowOddCol">&nbsp;</th>
        </tr>

<%
    String row = "even";
    for (int i = 0; i < schemas.length; i++)
    {
%>
        <tr>
            <td class="<%= row %>RowOddCol"><%= schemas[i].getSchemaID() %></td>
            <td class="<%= row %>RowEvenCol">
                <a href="<%=request.getContextPath()%>/dspace-admin/metadata-field-registry?dc_schema_id=<%= schemas[i].getSchemaID() %>"><%= schemas[i].getNamespace() %></a>
            </td>
            <td class="<%= row %>RowOddCol">
                <%= schemas[i].getName() %>
            </td>
            <td class="<%= row %>RowOddCol">
		<% if ( schemas[i].getSchemaID() != 1 ) { %>
                <form method="post" action="">
                    <input type="hidden" name="dc_schema_id" value="<%= schemas[i].getSchemaID() %>"/>
	            <button class="btn btn-default" type="button" name="submit_update" onclick="javascript:document.schema.namespace.value='<%= schemas[i].getNamespace() %>';document.schema.short_name.value='<%= schemas[i].getName() %>';document.schema.dc_schema_id.value='<%= schemas[i].getSchemaID() %>';return null;">
			<i class="fas fa-edit"></i>
		    </button>
                    
		    <button class="btn btn-danger" type="submit" name="submit_delete">
			<i class="fas fa-trash-alt"></i>
		    </button>
                </form>
		    <% } %>
                </td>
            </tr>
<%
        row = (row.equals("odd") ? "even" : "odd");
    }
%>
    </table>
        
  <form method="post" name="schema" action="">
  <input type="hidden" name="dc_schema_id" value=""/>
  	
         <p class="alert alert-info">
             <fmt:message key="jsp.dspace-admin.list-metadata-schemas.instruction"/>
         </p>
         <div class="input-group col-md-6">
	     	<div class="input-group-addon">
		 		<span class="col-md-2"><fmt:message key="jsp.dspace-admin.list-metadata-schemas.namespace"/>:</span>
		 	</div>
          	<input class="form-control" type="text" name="namespace" value=""/>
		</div>
       <div class="input-group col-md-6">
       		<div class="input-group-addon">
       			<span class="col-md-2"><fmt:message key="jsp.dspace-admin.list-metadata-schemas.name"/>:</span>
    	   </div>			
       		<input class="form-control" type="text" name="short_name" value=""/>
	    </div>
        <br/><br/><br/>
       <div class="row col-md-offset-5">
       		
		<button class="btn btn-success col-md-3" type="submit" name="submit_add">
			<fmt:message key="jsp.dspace-admin.general.save"/>
			<i class="fas fa-save"></i>
		</button>
       </div>
	
  </form>
</dspace:layout>
