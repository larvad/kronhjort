<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pagetemplate>

    <jsp:body>

        <div class="page">
            <h1>
                Vælg en knap
            </h1>

            <div class="forms">
                <form action="fc/otto" method="post" class="button">
                    <input type="hidden" name="command" value="otto"/>
                    <input type="submit"  value="Til otto"/>
                </form>
                <form action="fc/marc" method="post" class="button2">
                    <input type="hidden" name="command" value="marc"/>
                    <input type="submit"  value="Til marc"/>
                </form>
                <form action="fc/timi" method="post" class="button3">
                    <input type="hidden" name="command" value="timi"/>
                    <input type="submit"  value="Til timi"/>
                </form>
            </div>
        </div>


    </jsp:body>

</t:pagetemplate>
