<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <html>
         <head>
            <style>
               body {
                  font-family: Arial, sans-serif;
                  margin: 10px;
                  background-color: #d9d9d9;
               }

               h2 {
                  color: #284b6d; /* Heading color */
               }

               table {
                  width: 100%;
                  border-collapse: collapse;
                  margin-top: 20px;
               }

               th, td {
                  border: 1px solid #d9d9d9;
                  padding: 10px;
                  text-align: left;
               }

               th {
                  background-color: #353535;
                  color: #efefd0;
               }

               tr:nth-child(even) {
                  background-color: #c0c0ff; /* Light blue background for even rows */
               }

               tr:hover {
                  background-color: #3c6e71; /* Hover color */
               }
            </style>
         </head>
         <body>
            <h2><center>Fest Details</center></h2>
            <table>
               <tr bgcolor="#9acd32">
                  <th>Event</th>
                  <th>University Name</th>
                  <th>Date</th>
                  <th>Location</th>
                  <th>Department</th>
                  <th>Events</th>
               </tr>
               <xsl:for-each select="Event/festname">
                  <tr>
                     <td>
                        <xsl:value-of select="@event"/>
                     </td>
                     <td>
                        <xsl:value-of select="universityname"/>
                     </td>
                     <td>
                        <xsl:value-of select="Date"/>
                     </td>
                     <td>
                        <xsl:value-of select="Location"/>
                     </td>
                     <td>
                        <xsl:value-of select="Department"/>
                     </td>
                     <td>
                        <xsl:for-each select="Events/*">
                           <xsl:value-of select="."/>
                           <xsl:if test="position() != last()">
                              <xsl:text>, </xsl:text>
                           </xsl:if>
                        </xsl:for-each>
                     </td>
                  </tr>
               </xsl:for-each>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
