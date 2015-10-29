// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.c;

import android.content.DialogInterface;

// Referenced classes of package net.youmi.android.a.a.c:
//            c

class e
    implements android.content.DialogInterface.OnClickListener
{

    final android.webkit.GeolocationPermissions.Callback a;
    final String b;
    final c c;

    e(c c1, android.webkit.GeolocationPermissions.Callback callback, String s)
    {
        c = c1;
        a = callback;
        b = s;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        try
        {
            a.invoke(b, true, true);
            dialoginterface.cancel();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (DialogInterface dialoginterface)
        {
            return;
        }
    }
}
