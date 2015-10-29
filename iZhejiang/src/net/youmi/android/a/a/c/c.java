// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.c;

import android.app.AlertDialog;

// Referenced classes of package net.youmi.android.a.a.c:
//            b, f, e, d

class c extends b
{

    c(net.youmi.android.a.a.i.a.a.c c1)
    {
        super(c1);
    }

    public void onExceededDatabaseQuota(String s, String s1, long l, long l1, long l2, android.webkit.WebStorage.QuotaUpdater quotaupdater)
    {
        try
        {
            quotaupdater.updateQuota(2L * l1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }

    public void onGeolocationPermissionsShowPrompt(String s, android.webkit.GeolocationPermissions.Callback callback)
    {
        android.app.Activity activity;
        try
        {
            activity = a.h();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        if (activity == null)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        try
        {
            (new android.app.AlertDialog.Builder(activity)).setIcon(0x108009b).setTitle("\u63D0\u793A").setMessage(String.format("\u7AD9\u70B9 %s \u60F3\u83B7\u5F97\u60A8\u7684\u4F4D\u7F6E\u4FE1\u606F,\u662F\u5426\u5141\u8BB8?", new Object[] {
                s
            })).setPositiveButton("\u5141\u8BB8\u672C\u6B21", new f(this, callback, s)).setNeutralButton("\u603B\u662F\u5141\u8BB8", new e(this, callback, s)).setNegativeButton("\u62D2\u7EDD", new d(this, callback, s)).create().show();
        }
        catch (Throwable throwable) { }
        super.onGeolocationPermissionsShowPrompt(s, callback);
        return;
        callback.invoke(s, true, false);
        break MISSING_BLOCK_LABEL_97;
    }
}
