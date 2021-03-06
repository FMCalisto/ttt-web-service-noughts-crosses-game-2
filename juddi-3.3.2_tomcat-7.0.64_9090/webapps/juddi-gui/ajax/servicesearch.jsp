<%-- 
    Document   : servicesearch
    Created on : Feb 27, 2013, 4:46:08 PM
    Author     : Alex O'Ree
/*
 * Copyright 2001-2008 The Apache Software Foundation.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
--%>


<%@page import="org.apache.juddi.webconsole.resources.ResourceLoader"%>
<%@page import="org.apache.juddi.webconsole.PostBackConstants"%>
<%@page import="org.apache.juddi.webconsole.hub.PagableContainer"%>
<%@page import="org.apache.juddi.webconsole.hub.UddiHub"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="../csrf.jsp" %>
<!DOCTYPE html>
<% 
    UddiHub x = UddiHub.getInstance(application, request.getSession());
    //keyword=' + keyword + "&offset=" + offset + "&maxrecords=" + maxrecords
    int maxrecords = 50;
    int offset = 0;
    String lang = request.getParameter("lang");
    if (lang == null || lang.length() == 0) {
        lang = null;
    }
    if (lang != null && lang.equalsIgnoreCase(ResourceLoader.GetResource(session, "items.clicktoedit"))) {
        lang = null;
    }
    String keyword = request.getParameter("keyword");
    if (keyword == null || keyword.length() == 0) {
        keyword = "%";
    }
    try {
        maxrecords = Integer.parseInt(request.getParameter("maxrecords"));
    } catch (Exception ex) {
    }
    try {
        offset = Integer.parseInt(request.getParameter("offset"));
    } catch (Exception ex) {
    }
    if (offset < 0) {
        offset = 0;
    }
    if (maxrecords > 50) {
        maxrecords = 50;
    }
    boolean isChooser = false;
    try {
        isChooser = Boolean.parseBoolean(request.getParameter("chooser"));
    } catch (Exception ex) {
    }

    PagableContainer ret = (x.SearchForServices(keyword, lang, maxrecords, offset, isChooser));
    
    if (ret.renderedHtml.contains(ResourceLoader.GetResource(session, "errors.generic")))
                response.setStatus(406);
    out.write(ret.renderedHtml);

%>
<script type="text/javascript">
    totalrecordsService=<%=ret.totalrecords%>;
    $("#totalrecordsService").text(totalrecordsService);
    $("#offsetService").text(<%=offset%>);
    $("#displayrecordsService").text (<%=ret.displaycount%>);
    refresh();
</script>