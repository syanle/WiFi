// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.pinyin4j;

import java.io.BufferedInputStream;

class ResourceHelper
{

    static Class class$net$sourceforge$pinyin4j$ResourceHelper;

    ResourceHelper()
    {
    }

    static Class _mthclass$(String s)
    {
        try
        {
            s = Class.forName(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new NoClassDefFoundError(s.getMessage());
        }
        return s;
    }

    static BufferedInputStream getResourceInputStream(String s)
    {
        Class class1;
        if (class$net$sourceforge$pinyin4j$ResourceHelper == null)
        {
            class1 = _mthclass$("net.sourceforge.pinyin4j.ResourceHelper");
            class$net$sourceforge$pinyin4j$ResourceHelper = class1;
        } else
        {
            class1 = class$net$sourceforge$pinyin4j$ResourceHelper;
        }
        return new BufferedInputStream(class1.getResourceAsStream(s));
    }
}
