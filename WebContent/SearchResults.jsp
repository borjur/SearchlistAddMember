->
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<html>
<head>
    <title>HighView</title>
    <link href="HighView.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<center><h1>All Members</h1></center>
<f:view>
    <h:form>

        <h:dataTable value="#{searchResults}" var="member" border="1"
                     styleClass="searchResult"
                     headerClass="searchResultHeader"
                     rowClasses="oddrow,evenrow">
            <h:column>
                <f:facet name="header">
                    <f:verbatim>ID</f:verbatim>
                </f:facet>
                <h:outputText value="#{member.id}"/>
            </h:column>
            <h:column>
                <f:facet name="header">
                    <f:verbatim>User name</f:verbatim>
                </f:facet>
                <h:outputText value="#{member.username}"/>
            </h:column>
            <h:column>
                <f:facet name="header">
                    <f:verbatim>E-mail</f:verbatim>
                </f:facet>
                <h:outputText value="#{member.email}"/>
            </h:column>
            <h:column>
                <f:facet name="header">
                    <f:verbatim>Member Since</f:verbatim>
                </f:facet>
                <h:outputText value="#{member.memberSinceDate}">
                    <f:convertDateTime pattern="MM-yyyy"/>
                </h:outputText>
            </h:column>
            <h:column>
                <f:facet name="header">
                    <f:verbatim>active</f:verbatim>
                </f:facet>
                <h:outputText value="#{member.active}"/>
            </h:column>

            <h:column>
                <f:facet name="header">
                    <f:verbatim>street</f:verbatim>
                </f:facet>
                <h:outputText value="#{member.street}"/>
            </h:column>
            <h:column>
                <f:facet name="header">
                    <f:verbatim>zipCode</f:verbatim>
                </f:facet>
                <h:outputText value="#{member.zipCode}"/>
            </h:column>
            <h:column>
                <f:facet name="header">
                    <f:verbatim>city</f:verbatim>
                </f:facet>
                <h:outputText value="#{member.city}"/>
            </h:column>
            <h:column>
                <f:facet name="header">
                    <f:verbatim>country</f:verbatim>
                </f:facet>
                <h:outputText value="#{member.country}"/>
            </h:column>
            <h:column>
                <f:facet name="header">
                    <f:verbatim>region</f:verbatim>
                </f:facet>
                <h:outputText value="#{member.region}"/>
            </h:column>

        </h:dataTable>

    <h:commandLink action="search">
        <f:verbatim>Back to Search Page</f:verbatim>
    </h:commandLink>
    
 </h:form>
</f:view>
</body>
</html>