// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.social;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics.social:
//            a, UMPlatformData, f, c, 
//            d

public abstract class UMSocialService
{
    private static class a extends AsyncTask
    {

        String a;
        String b;
        b c;
        UMPlatformData d[];

        protected transient d a(Void avoid[])
        {
            Object obj;
            String s;
            int i;
            if (TextUtils.isEmpty(b))
            {
                avoid = com.umeng.analytics.social.c.a(a);
            } else
            {
                avoid = com.umeng.analytics.social.c.a(a, b);
            }
            try
            {
                obj = new JSONObject(avoid);
                i = ((JSONObject) (obj)).optInt("st");
            }
            // Misplaced declaration of an exception variable
            catch (Void avoid[])
            {
                return new d(-99, avoid);
            }
            if (i == 0)
            {
                i = -404;
            }
            avoid = new d(i);
            s = ((JSONObject) (obj)).optString("msg");
            if (!TextUtils.isEmpty(s))
            {
                avoid.a(s);
            }
            obj = ((JSONObject) (obj)).optString("data");
            if (!TextUtils.isEmpty(((CharSequence) (obj))))
            {
                avoid.b(((String) (obj)));
            }
            return avoid;
        }

        protected void a(d d1)
        {
            if (c != null)
            {
                c.a(d1, d);
            }
        }

        protected Object doInBackground(Object aobj[])
        {
            return a((Void[])aobj);
        }

        protected void onPostExecute(Object obj)
        {
            a((d)obj);
        }

        protected void onPreExecute()
        {
            if (c != null)
            {
                c.a();
            }
        }

        public a(String as[], b b1, UMPlatformData aumplatformdata[])
        {
            a = as[0];
            b = as[1];
            c = b1;
            d = aumplatformdata;
        }
    }

    public static interface b
    {

        public abstract void a();

        public transient abstract void a(d d, UMPlatformData aumplatformdata[]);
    }


    public UMSocialService()
    {
    }

    private static transient void a(Context context, b b1, String s, UMPlatformData aumplatformdata[])
    {
        int i = 0;
        if (aumplatformdata == null) goto _L2; else goto _L1
_L1:
        int j = aumplatformdata.length;
_L3:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!aumplatformdata[i].isValid())
        {
            throw new com.umeng.analytics.social.a("parameter is not valid.");
        }
        i++;
        if (true) goto _L3; else goto _L2
_L2:
        try
        {
            (new a(f.a(context, s, aumplatformdata), b1, aumplatformdata)).execute(new Void[0]);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e("MobclickAgent", "unable send event.", context);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e("MobclickAgent", "", context);
        }
        return;
    }

    public static transient void share(Context context, String s, UMPlatformData aumplatformdata[])
    {
        a(context, null, s, aumplatformdata);
    }

    public static transient void share(Context context, UMPlatformData aumplatformdata[])
    {
        a(context, null, null, aumplatformdata);
    }
}
