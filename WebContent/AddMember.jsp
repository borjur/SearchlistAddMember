
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<html>
<head>
    <title>HighView</title>
    <link href="HighView.css" rel="stylesheet" type="text/css"/>
</head>

<body>

<f:view>
    <f:verbatim><h2>Add Member</h2></f:verbatim>
    <h:form>
        <h:panelGrid columns="2">
            <f:verbatim>UserName</f:verbatim>
            <h:panelGroup>
                <h:inputText id="username" value="#{memberBean.username}" required="true"/>
                <h:message for="username" errorClass="error"/>
            </h:panelGroup>
            <f:verbatim>Email</f:verbatim>
            <h:panelGroup>
                <h:inputText id="email" value="#{memberBean.email}"/>
                <h:message for="email" errorClass="error"/>
            </h:panelGroup>
            <f:verbatim>Member Since (dd-MM-yyyy)</f:verbatim>
            <h:panelGroup>
                <h:inputText id="memberSinceDate" value="#{memberBean.memberSinceDate}">
                    <f:convertDateTime pattern="dd-MM-yyyy"/>
                </h:inputText>
                <h:message for="memberSinceDate" errorClass="error"/>
            </h:panelGroup>
            <f:verbatim>Member Active</f:verbatim>
            <h:panelGroup>
                <h:selectBooleanCheckbox id="active" value="#{memberBean.active}"/>
            </h:panelGroup>
            <f:verbatim>Street</f:verbatim>
            <h:panelGroup>
                <h:inputText id="street" value="#{memberBean.street}"/>
                <h:message for="street" errorClass="error"/>
            </h:panelGroup>
            <f:verbatim>Zip</f:verbatim>
            <h:panelGroup>
                <h:inputText id="zipCode" value="#{memberBean.zipCode}"/>
                <h:message for="zipCode" errorClass="error"/>
            </h:panelGroup>
            <f:verbatim>City</f:verbatim>
            <h:panelGroup>
                <h:inputText id="city" value="#{memberBean.city}"/>
                <h:message for="city" errorClass="error"/>
            </h:panelGroup>
            <f:verbatim>Region</f:verbatim>
            <h:panelGroup>
                <h:inputText id="region" value="#{memberBean.region}"/>
                <h:message for="region" errorClass="error"/>
            </h:panelGroup>
            <f:verbatim>Country</f:verbatim>
            <h:panelGroup>
                <h:inputText id="country" value="#{memberBean.country}">
                    <f:validateLength minimum="2" maximum="50"/>
                </h:inputText>
                <h:message for="country" errorClass="error"/>
            </h:panelGroup>
            <h:commandButton value="Save" action="#{memberBean.addMember}"/>
        </h:panelGrid>
    </h:form>
</f:view>
</body>
</html>