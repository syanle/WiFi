// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.os.AsyncTask;

// Referenced classes of package u.aly:
//            bw, bv, br, bu

public class bt extends bw
{
    public static interface a
    {

        public abstract void a();

        public abstract void a(bv.a a1);
    }

    private class b extends AsyncTask
    {

        final bt a;
        private bu b;
        private a c;

        protected transient bv.a a(Integer ainteger[])
        {
            return a.a(b);
        }

        protected void a(bv.a a1)
        {
            if (c != null)
            {
                c.a(a1);
            }
        }

        protected transient Object doInBackground(Object aobj[])
        {
            return a((Integer[])aobj);
        }

        protected void onPostExecute(Object obj)
        {
            a((bv.a)obj);
        }

        protected void onPreExecute()
        {
            if (c != null)
            {
                c.a();
            }
        }

        public b(bu bu, a a1)
        {
            a = bt.this;
            super();
            b = bu;
            c = a1;
        }
    }


    private static final String a = u/aly/bt.getName();

    public bt()
    {
    }

    public bv.a a(bu bu)
    {
        bu = (bv)a(((bx) (bu)), u/aly/bv);
        if (bu == null)
        {
            return bv.a.b;
        } else
        {
            return ((bv) (bu)).a;
        }
    }

    public void a(bu bu, a a1)
    {
        (new b(bu, a1)).execute(new Integer[0]);
_L1:
        return;
        bu;
        br.b(a, "", bu);
        if (a1 != null)
        {
            a1.a(bv.a.b);
            return;
        }
          goto _L1
    }

}
