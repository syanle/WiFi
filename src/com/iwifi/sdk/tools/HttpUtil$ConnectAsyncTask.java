// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.tools;

import android.os.AsyncTask;

// Referenced classes of package com.iwifi.sdk.tools:
//            HttpUtil

private class <init> extends AsyncTask
{

    final HttpUtil this$0;

    protected transient Boolean doInBackground(String as[])
    {
        HttpUtil.access$4(HttpUtil.this, HttpUtil.access$0(HttpUtil.this), HttpUtil.access$1(HttpUtil.this), HttpUtil.access$2(HttpUtil.this), HttpUtil.access$3(HttpUtil.this));
        return null;
    }

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected void onPostExecute(Boolean boolean1)
    {
        super.onPostExecute(boolean1);
        try
        {
            taskexecute(HttpUtil.access$5(HttpUtil.this), HttpUtil.access$6(HttpUtil.this));
            HttpUtil.access$7(HttpUtil.this, null);
            System.gc();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Boolean boolean1)
        {
            boolean1.printStackTrace();
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Boolean)obj);
    }

    private ()
    {
        this$0 = HttpUtil.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
