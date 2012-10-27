<ul id="menu">
    <li class="first">
        <a href="${pageContext.request.contextPath}/admin"><spring:message code="admin.title.short"/></a>
    </li>
    
    <openmrs:hasPrivilege privilege="Manage Global Properties">
        <li <c:if test='<%= request.getRequestURI().contains("sana/lexicon") %>'>class="active"</c:if>>
            <a href="lexicon.form">
                <spring:message code="sana.lexicon"/>
            </a>
        </li>
    </openmrs:hasPrivilege>
    
    
    <openmrs:hasPrivilege privilege="View Encounter Queue">
        <li <c:if test='<%= request.getRequestURI().contains("sana/queue") %>'>class="active"</c:if>>
            <a href="lexicon.form">
                <spring:message code="sana.view"/>
            </a>
        </li>
    </openmrs:hasPrivilege>
    
        
    <openmrs:hasPrivilege privilege="Manage Global Properties">
    <li <c:if test='<%= request.getRequestURI().contains("sana/mdsLog") %>'>class="active"</c:if>>
        <a href="mdsLog.htm">
            <spring:message code="sana.mdsLog"/>
        </a>
    </li>
    </openmrs:hasPrivilege>
    
        
    <openmrs:hasPrivilege privilege="Manage Global Properties">
    <li <c:if test='<%= request.getRequestURI().contains("sana/mdsAdmin") %>'>class="active"</c:if>>
        <a href="mdsAdmin.htm">
            <spring:message code="sana.mdsAdmin"/>
        </a>
    </li>
    </openmrs:hasPrivilege>
    
    <openmrs:extensionPoint pointId="org.openmrs.module.sana.admin.localHeader" type="html">
            <c:forEach items="${extension.links}" var="link">
                <li <c:if test="${fn:endsWith(pageContext.request.requestURI, link.key)}">class="active"</c:if> >
                    <a href="${pageContext.request.contextPath}/${link.key}"><spring:message code="${link.value}"/></a>
                </li>
            </c:forEach>
    </openmrs:extensionPoint>
</ul>