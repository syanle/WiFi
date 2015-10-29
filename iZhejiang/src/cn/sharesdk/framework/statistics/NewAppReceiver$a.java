// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics;

import android.content.Context;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.LocalDB;
import com.mob.tools.utils.R;
import java.io.File;
import java.util.ArrayList;

// Referenced classes of package cn.sharesdk.framework.statistics:
//            NewAppReceiver

private static class a
{

    private LocalDB a;

    public ArrayList a()
    {
        Object obj = a.getObject("buffered_apps");
        if (obj == null)
        {
            return new ArrayList();
        } else
        {
            return (ArrayList)obj;
        }
    }

    public void a(long l)
    {
        a.putLong("buffered_apps_time", Long.valueOf(l));
    }

    public void a(ArrayList arraylist)
    {
        a.putObject("buffered_apps", arraylist);
    }

    public long b()
    {
        return a.getLong("buffered_apps_time");
    }

    public (Context context)
    {
        Object obj = DeviceHelper.getInstance(context);
        context = R.getCachePath(context, null);
        if (((DeviceHelper) (obj)).getSdcardState())
        {
            obj = new File(((DeviceHelper) (obj)).getSdcardPath(), "ShareSDK");
            if (((File) (obj)).exists())
            {
                a = new LocalDB();
                context = new File(((File) (obj)), ".ba");
                a.open(context.getAbsolutePath());
                return;
            }
        }
        try
        {
            a = new LocalDB();
            context = new File(context, ".ba");
            if (!context.getParentFile().exists())
            {
                context.getParentFile().mkdirs();
            }
            a.open(context.getAbsolutePath());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Ln.e(context);
        }
        if (a == null)
        {
            a = new LocalDB();
        }
        return;
    }
}
