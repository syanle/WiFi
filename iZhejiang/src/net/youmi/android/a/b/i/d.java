// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.i;

import org.apache.http.Header;
import org.apache.http.HeaderElement;

// Referenced classes of package net.youmi.android.a.b.i:
//            c

class d
    implements Header
{

    final c a;

    d(c c1)
    {
        a = c1;
        super();
    }

    public HeaderElement[] getElements()
    {
        return null;
    }

    public String getName()
    {
        return "host";
    }

    public String getValue()
    {
        return a.g;
    }
}
