// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.tools;

import org.dom4j.DocumentException;

// Referenced classes of package com.iwifi.sdk.tools:
//            Logger

public class ErrDeal
{

    public ErrDeal()
    {
    }

    public static void getActivityErr(Exception exception, Object obj)
    {
        Logger.print("Exception", (new StringBuilder("obj =")).append(obj).append("err =").append(exception.toString()).toString());
    }

    public static String getConnErr(String s, boolean flag)
    {
        if (!flag && s == null)
        {
            return "\u83B7\u53D6\u6570\u636E\u5931\u8D25!";
        }
        if (flag && s == null)
        {
            return "\u7F51\u7EDC\u8FDE\u63A5\u8D85\u65F6!";
        } else
        {
            return "\u7F51\u7EDC\u534F\u8BAE\u51FA\u9519!";
        }
    }

    public static void getDocumentErr(DocumentException documentexception, Object obj)
    {
        Logger.print("DocumentException", (new StringBuilder("obj =")).append(obj).append("err =").append(documentexception.toString()).toString());
    }
}
