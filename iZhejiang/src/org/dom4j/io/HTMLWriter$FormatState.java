// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;


// Referenced classes of package org.dom4j.io:
//            HTMLWriter

private class indent
{

    private String indent;
    private boolean newlines;
    private final HTMLWriter this$0;
    private boolean trimText;

    public String getIndent()
    {
        return indent;
    }

    public boolean isNewlines()
    {
        return newlines;
    }

    public boolean isTrimText()
    {
        return trimText;
    }

    public (boolean flag, boolean flag1, String s)
    {
        this$0 = HTMLWriter.this;
        newlines = false;
        trimText = false;
        indent = "";
        newlines = flag;
        trimText = flag1;
        indent = s;
    }
}
