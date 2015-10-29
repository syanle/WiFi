// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.f.a;

import android.content.Context;
import android.content.Intent;
import java.io.Serializable;

public abstract class a
    implements Serializable
{

    public a()
    {
    }

    public abstract void a(Context context);

    public void a(Intent intent)
    {
        try
        {
            intent.putExtra("uMJpK6hDkTmz", this);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            return;
        }
    }
}
