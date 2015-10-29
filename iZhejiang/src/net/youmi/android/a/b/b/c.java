// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.b;

import android.content.Context;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Properties;

public class c
{

    public static Properties a(Context context, String s)
    {
        Properties properties;
        properties = new Properties();
        Context context1 = null;
        try
        {
            context = context.openFileInput(s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            if (context1 != null)
            {
                try
                {
                    context1.close();
                }
                // Misplaced declaration of an exception variable
                catch (Context context)
                {
                    return properties;
                }
                return properties;
            } else
            {
                break MISSING_BLOCK_LABEL_35;
            }
        }
        finally
        {
            s = null;
        }
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        context1 = context;
        properties.load(context);
        if (context != null)
        {
            try
            {
                context.close();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                return properties;
            }
        }
        return properties;
_L2:
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        throw context;
        Exception exception;
        exception;
        s = context;
        context = exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static boolean a(Context context, Properties properties, String s)
    {
        boolean flag1 = false;
        net/youmi/android/a/b/b/c;
        JVM INSTR monitorenter ;
        context = context.openFileOutput(s, 0);
        boolean flag;
        flag = flag1;
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        properties.store(context, null);
        try
        {
            context.close();
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        flag = true;
_L2:
        net/youmi/android/a/b/b/c;
        JVM INSTR monitorexit ;
        return flag;
        context;
        throw context;
        context;
        flag = flag1;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
