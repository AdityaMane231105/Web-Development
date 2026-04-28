<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<body>
    <h2>Hospital Appointment System</h2>

    <table border="1">
        <tr>
            <th>Patient Name</th>
            <th>Doctor Name</th>
            <th>Department</th>
            <th>Time</th>
        </tr>

        <xsl:for-each select="hospital/appointment">
            <tr>
                <td><xsl:value-of select="patient_name"/></td>
                <td><xsl:value-of select="doctor_name"/></td>
                <td><xsl:value-of select="department"/></td>
                <td><xsl:value-of select="time"/></td>
            </tr>
        </xsl:for-each>

    </table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>