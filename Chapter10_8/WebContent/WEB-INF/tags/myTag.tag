<%--If you using TAG FILE you need use directive tag or attribute in same meaning like using taglib
you have attributes but you declare this way, if you need body-content you use tag directive
if you need dynamic-attribute you use tag directive as well: --%>
<%@ tag body-content="empty" dynamic-attributes="tagAttrs" %>

<%@ attribute name="optionsList" type="java.util.List"  required="true" rtexprvalue="true"%>

<%@ attribute name="name" required="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--Use the JSTL forEach custom tag to iterate over each entry in the dynamic attribute's hashmap. Remember, the 
key of the entry is the attribute name, and the value of the entry is the value of the attribute --%>
<select name='${name}'
   <c:forEach var="attrEntry" items="${tagAttrs}">
   		${attrEntry.key} = '${attrEntry.value}'
   </c:forEach>
>

	<c:forEach var="option" items="${optionsList}">
		<option value="${option}">${option} </option>
	</c:forEach>

</select>