
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Min side</title>
</head>
<body>

</body>
<h1>
    Klokken er nu ${requestScope.tid}, så vi skal snart have frokost
</h1>

<div class="forms">
    <form action="fc/otto" method="post">
        <input type="hidden" name="command" value="otto"/>
        <input type="submit"  value="Til otto"/>
    </form>
    <form action="fc/marc" method="post">
        <input type="hidden" name="command" value="marc"/>
        <input type="submit"  value="Til marc"/>
    </form>

    <form action="fc/timi" method="post">
        <input type="hidden" name="command" value="timi"/>
        <input type="submit"  value="Til timi"/>
    </form>
</div>
