// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.callback;

import java.io.Serializable;
import java.util.Locale;

// Referenced classes of package org.apache.harmony.javax.security.auth.callback:
//            Callback

public class LanguageCallback
    implements Callback, Serializable
{

    private static final long serialVersionUID = 0x1c051babff1bc5adL;
    private Locale locale;

    public LanguageCallback()
    {
    }

    public Locale getLocale()
    {
        return locale;
    }

    public void setLocale(Locale locale1)
    {
        locale = locale1;
    }
}
