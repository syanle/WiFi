// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.e;

import org.apache.http.Header;
import org.apache.http.HeaderElement;

// Referenced classes of package net.youmi.android.a.a.g.e:
//            h

class i
    implements Header
{

    final String a;
    final String b;
    final h c;

    i(h h, String s, String s1)
    {
        c = h;
        a = s;
        b = s1;
        super();
    }

    public HeaderElement[] getElements()
    {
        return null;
    }

    public String getName()
    {
        return b;
    }

    public String getValue()
    {
        return a;
    }
}
