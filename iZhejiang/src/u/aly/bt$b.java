// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.os.AsyncTask;

// Referenced classes of package u.aly:
//            bt, bu

private class c extends AsyncTask
{

    final bt a;
    private bu b;
    private a c;

    protected transient nteger a(Integer ainteger[])
    {
        return a.a(b);
    }

    protected void a(b b1)
    {
        if (c != null)
        {
            c.a(b1);
        }
    }

    protected transient Object doInBackground(Object aobj[])
    {
        return a((Integer[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((a)obj);
    }

    protected void onPreExecute()
    {
        if (c != null)
        {
            c.a();
        }
    }

    public bject(bt bt1, bu bu, bject bject)
    {
        a = bt1;
        super();
        b = bu;
        c = bject;
    }
}
