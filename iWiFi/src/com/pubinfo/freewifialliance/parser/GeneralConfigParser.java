// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.parser;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

// Referenced classes of package com.pubinfo.freewifialliance.parser:
//            XMLDefaultHandler

public class GeneralConfigParser
{

    private static final String GENERAL_CONFIG_FILENAME = "default_config.xml";
    private static boolean bInternalConfigHaveLoaded = false;
    public static int iWiFi_Client_Build_Version = 0;
    private static final String iWiFi_Defualt_Config_File = "default_config.xml";
    private static final String iWiFi_Private_Path = "iWiFi";

    public GeneralConfigParser()
    {
    }

    public static void parsingGeneralConfig(Context context)
    {
        File file = new File((new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getPath()))).append(File.separator).append("iWiFi").append(File.separator).append("default_config.xml").toString());
        if (!file.exists())
        {
            break MISSING_BLOCK_LABEL_111;
        }
        context = new FileInputStream(file);
        bInternalConfigHaveLoaded = false;
_L2:
        XMLReader xmlreader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
        xmlreader.setContentHandler(new XMLDefaultHandler());
        xmlreader.parse(new InputSource(context));
        context.close();
        return;
        if (bInternalConfigHaveLoaded)
        {
            break MISSING_BLOCK_LABEL_154;
        }
        context = context.getResources().getAssets().open("default_config.xml");
        bInternalConfigHaveLoaded = true;
        if (true) goto _L2; else goto _L1
_L1:
        context;
        context.printStackTrace();
        return;
        context;
        context.printStackTrace();
        return;
        context;
        context.printStackTrace();
    }

    static 
    {
        iWiFi_Client_Build_Version = 0;
        bInternalConfigHaveLoaded = false;
    }
}
