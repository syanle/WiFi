// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android;

import android.app.IntentService;
import android.content.Intent;
import java.util.List;
import net.youmi.android.a.a.g.a.b.b;
import net.youmi.android.a.a.g.a.c;
import net.youmi.android.a.a.g.a.g;
import net.youmi.android.a.b.k.m;

// Referenced classes of package net.youmi.android:
//            c

public class ExpService extends IntentService
{

    public ExpService()
    {
        super("e298a29c3e4ed1313f3a82588d004ffd");
    }

    protected final void onHandleIntent(Intent intent)
    {
        if (intent != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        android.app.Application application;
        List list;
        try
        {
            application = getApplication();
            if (g.a.equals(intent.getAction()))
            {
                (new c(application)).a();
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            return;
        }
        if (!g.b.equals(intent.getAction()))
        {
            continue; /* Loop/switch isn't completed */
        }
        intent = net.youmi.android.a.a.g.a.a.c.a(application);
        list = intent.c();
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        if (list.size() > 0)
        {
            m.a().a(new net.youmi.android.c(this, application, list));
        }
        intent.b();
        g.a(application);
        return;
        if (!g.c.equals(intent.getAction())) goto _L1; else goto _L3
_L3:
        intent = intent.getSerializableExtra("AdData");
        if (intent instanceof b)
        {
            (new net.youmi.android.a.a.g.a.b(application, (b)intent)).a();
            return;
        }
          goto _L1
    }
}
