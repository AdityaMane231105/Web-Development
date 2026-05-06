<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f4;
        }

        h2 {
            color: #333;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: auto;
            background: white;
        }

        th {
            background-color: #007bff;
            color: white;
            padding: 10px;
        }

        td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>

<body>

<h2>Hospital Appointment System</h2>

<table>
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
