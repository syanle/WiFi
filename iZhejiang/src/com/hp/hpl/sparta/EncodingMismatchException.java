// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;


// Referenced classes of package com.hp.hpl.sparta:
//            ParseException

public class EncodingMismatchException extends ParseException
{

    private String declaredEncoding_;

    EncodingMismatchException(String s, String s1, String s2)
    {
        super(s, 0, s1.charAt(s1.length() - 1), s1, "encoding '" + s1 + "' declared instead of of " + s2 + " as expected");
        declaredEncoding_ = s1;
    }

    String getDeclaredEncoding()
    {
        return declaredEncoding_;
    }
}
