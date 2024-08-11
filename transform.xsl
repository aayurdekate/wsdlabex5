<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/photographyCommunity">
        <html>
            <head>
                <title>Photography Community</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f4f4f4;
                    }
                    .container {
                        width: 80%;
                        margin: 0 auto;
                        background-color: #fff;
                        padding: 20px;
                        border-radius: 8px;
                        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                    }
                    h1 {
                        text-align: center;
                        color: #333;
                    }
                    .photographer, .event {
                        margin-bottom: 30px;
                        border-bottom: 1px solid #ddd;
                        padding-bottom: 20px;
                    }
                    h2 {
                        color: #444;
                        margin-bottom: 10px;
                    }
                    a {
                        color: #0066cc;
                        text-decoration: none;
                    }
                    .photo {
                        margin-left: 20px;
                        margin-bottom: 15px;
                    }
                    .photo p {
                        margin: 0;
                        color: #555;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <h1>Photography Community</h1>
                    
                    <xsl:for-each select="photographer">
                        <div class="photographer">
                            <h2><xsl:value-of select="name"/></h2>
                            <p><a href="{profileUrl}">View Profile</a></p>
                            <p><xsl:value-of select="bio"/></p>
                            <h3>Photos:</h3>
                            <xsl:for-each select="photos/photo">
                                <div class="photo">
                                    <p><strong>Title:</strong> <xsl:value-of select="title"/></p>
                                    <p><a href="{url}">View Photo</a></p>
                                    <p><strong>Date Taken:</strong> <xsl:value-of select="dateTaken"/></p>
                                    <p><strong>Description:</strong> <xsl:value-of select="description"/></p>
                                </div>
                            </xsl:for-each>
                        </div>
                    </xsl:for-each>

                    <h2>Upcoming Events</h2>
                    <xsl:for-each select="event">
                        <div class="event">
                            <h3><xsl:value-of select="title"/></h3>
                            <p><strong>Date:</strong> <xsl:value-of select="date"/></p>
                            <p><strong>Location:</strong> <xsl:value-of select="location"/></p>
                            <p><xsl:value-of select="description"/></p>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
