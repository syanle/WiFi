// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;

import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import java.io.File;
import net.youmi.android.c.a.g;

public class j
{

    static String a = "content://";

    public j()
    {
    }

    public static String a(Uri uri)
    {
        uri = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append(File.separator).append(g.b).append(uri.getPath()).toString();
        if ((new File(uri)).exists())
        {
            return uri;
        } else
        {
            return null;
        }
    }

    public static String a(String s)
    {
        if (Uri.parse(s).isAbsolute())
        {
            return s;
        } else
        {
            return (new StringBuilder()).append(a).append(File.separator).append(s).toString();
        }
    }

    public static void a(Context context)
    {
        try
        {
            new ComponentName(context, net/youmi/android/spot/j);
            a = a.concat(context.getPackageName());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
    }

}
