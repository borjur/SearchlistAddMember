
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<html>
<head>
    <title>HighView</title>
    <link href="HighView.css" rel="stylesheet" type="text/css"/>
</head>

<body>

<f:view>
    <f:verbatim><hr/>

        <h2>Search Member</h2></f:verbatim>
    <h:form>
        <h:panelGrid columns="2">
            <f:verbatim>UserName</f:verbatim>
            <h:panelGroup>
                <h:inputText id="username" value="#{memberBean.username}" required="true"/>
                <h:message for="username" errorClass="error"/>
            </h:panelGroup>

            <h:commandButton value="Find" action="#{memberBean.findMemberByUserName}"/>
            <h:panelGroup>
                <h:commandButton value="Add New Member" action="addNew" immediate="true"/>
                <h:commandButton value="List all Members User" action="#{memberBean.listAllMembers}" immediate="true"/>
            </h:panelGroup>
        </h:panelGrid>
    </h:form>
</f:view>
</body>
</html>