<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>

    <title>Add Todos</title>
</head>
<body>
<%@include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<div class="container">
    <h1>Enter Todo Details</h1>
    <form:form method="post" modelAttribute="todo">
        <fieldset class="mb-3">
            <form:label path="description">Description</form:label>
            <form:input type="text" required="required" path="description"/>
            <form:errors path="description" cssClass="text-warning"/>
        </fieldset>
        <fieldset class="mb-3">
            <form:label path="targetDate">Description</form:label>
            <form:input type="text" required="required" path="targetDate"/>
            <form:errors path="targetDate" cssClass="text-warning"/>
        </fieldset>

        <form:input type="hidden" path="id"/>
        <form:input type="hidden" path="done"/>
        <input type="submit" class="btn btn-success">
    </form:form>
</div>
<%@include file="common/footer.jspf" %>
<script type="text/javascript">
    $('#targetDate').datepicker({
        format: 'yyyy-mm-dd'
    });
</script>
</body>
</html>