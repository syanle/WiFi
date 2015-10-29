// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.nodes;


// Referenced classes of package org.jsoup.nodes:
//            Document

public static final class  extends Enum
{

    private static final xml $VALUES[];
    public static final xml html;
    public static final xml xml;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/jsoup/nodes/Document$OutputSettings$Syntax, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        html = new <init>("html", 0);
        xml = new <init>("xml", 1);
        $VALUES = (new .VALUES[] {
            html, xml
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
