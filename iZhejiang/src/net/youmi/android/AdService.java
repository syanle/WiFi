// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android;

import android.app.IntentService;
import android.content.Intent;
import net.youmi.android.a.a.g.f.a.a;

public class AdService extends IntentService
{

    public AdService()
    {
        super("e298a29c3e4ed1313f3a82588d004ffa");
    }

    protected final void onHandleIntent(Intent intent)
    {
        if (intent != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (!((intent = intent.getSerializableExtra("uMJpK6hDkTmz")) instanceof a)) goto _L1; else goto _L3
_L3:
        ((a)intent).a(this);
        return;
        intent;
    }
}
