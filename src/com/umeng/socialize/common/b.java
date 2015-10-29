// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.common;

import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import com.umeng.socom.Log;
import java.io.File;
import java.io.IOException;

// Referenced classes of package com.umeng.socialize.common:
//            SocialResHelper

class b extends AsyncTask
{

    final SocialResHelper.a a;

    b(SocialResHelper.a a1)
    {
        a = a1;
        super();
    }

    protected transient Drawable a(Object aobj[])
    {
        Drawable drawable;
        Drawable drawable1;
        Object obj;
        File file;
        try
        {
            if (SocialResHelper.a)
            {
                Thread.sleep(3000L);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Object aobj[]) { }
        publishProgress(new Integer[] {
            Integer.valueOf(0)
        });
        SocialResHelper.a(a.a, a.c);
        obj = null;
        drawable1 = null;
        aobj = obj;
        try
        {
            publishProgress(new Integer[] {
                Integer.valueOf(1)
            });
        }
        catch (IOException ioexception)
        {
            Log.e(SocialResHelper.a(), ioexception.toString());
            return ((Drawable) (aobj));
        }
        aobj = obj;
        file = SocialResHelper.b(a.a, a.c);
        drawable = drawable1;
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        drawable = drawable1;
        aobj = obj;
        if (!file.exists())
        {
            break MISSING_BLOCK_LABEL_138;
        }
        aobj = obj;
        drawable1 = Drawable.createFromPath(file.getAbsolutePath());
        drawable = drawable1;
        if (drawable1 != null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        aobj = drawable1;
        file.delete();
        drawable = drawable1;
        return drawable;
    }

    protected void a(Drawable drawable)
    {
        SocialResHelper.a.a(a, a.a, a.b, drawable, a.i, a.d, a.f, a.h, a.e);
    }

    protected transient void a(Integer ainteger[])
    {
        super.onProgressUpdate(ainteger);
        if (ainteger != null && ainteger.length >= 1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        ainteger[0].intValue();
        JVM INSTR tableswitch 0 1: default 44
    //                   0 45
    //                   1 71;
           goto _L3 _L4 _L5
_L5:
        continue; /* Loop/switch isn't completed */
_L3:
        return;
_L4:
        if (a.d == null) goto _L1; else goto _L6
_L6:
        a.d.a(SocialResHelper.FetchLocale.FETCH_FROM_NETWORK);
        return;
        if (a.d == null) goto _L1; else goto _L7
_L7:
        a.d.a(SocialResHelper.FetchLocale.FETCH_FROM_LOCALE_CACHE);
        return;
    }

    protected transient Object doInBackground(Object aobj[])
    {
        return a((Object[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Drawable)obj);
    }

    protected transient void onProgressUpdate(Object aobj[])
    {
        a((Integer[])aobj);
    }
}
