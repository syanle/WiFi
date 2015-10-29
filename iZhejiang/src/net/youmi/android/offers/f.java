// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers;

import android.content.Context;
import android.content.Intent;
import net.youmi.android.a.a.g.f.a.a;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.c.d.c;
import net.youmi.android.offers.d.b.e;
import net.youmi.android.offers.d.b.h;
import net.youmi.android.offers.d.b.k;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.offers:
//            PointsReceiver, EarnPointsOrderList, EarnPointsOrderInfo, g

public class f extends a
{

    public f()
    {
    }

    private void a(Context context, String s)
    {
        try
        {
            s = net.youmi.android.a.b.b.b.a(s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (s == null)
        {
            return;
        }
        a(context, ((JSONObject) (s)));
        if (a(((JSONObject) (s))))
        {
            b(context, s);
        }
        c(context, s);
        return;
    }

    private void a(Context context, EarnPointsOrderList earnpointsorderlist)
    {
        Object obj;
        try
        {
            obj = PointsReceiver.getActionName_EarnPoints(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        finally
        {
            throw context;
        }
        if (obj == null)
        {
            return;
        }
        obj = new Intent(((String) (obj)));
        ((Intent) (obj)).putExtra(net.youmi.android.offers.b.a.d(), earnpointsorderlist);
        context.sendBroadcast(((Intent) (obj)));
        return;
    }

    private void a(Context context, JSONObject jsonobject)
    {
        long l;
        try
        {
            l = net.youmi.android.a.b.b.b.a(jsonobject, "fb", 0L);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        finally
        {
            throw context;
        }
        if (l == 0L)
        {
            return;
        }
        if (l >= 0L)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        h.b(context);
        return;
        h.a(context, l * 1000L);
        return;
    }

    private boolean a(JSONObject jsonobject)
    {
        return net.youmi.android.a.b.b.b.a(jsonobject, "c", -999) == 0;
    }

    private void b(Context context)
    {
        String s;
        net.youmi.android.a.b.i.a.b b1;
        try
        {
            s = net.youmi.android.offers.d.a.a.b(context, net.youmi.android.a.b.c.f.a(context, net.youmi.android.offers.b.a.a(), null));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (s == null)
        {
            return;
        }
        b1 = new net.youmi.android.a.b.i.a.b();
        b1.a("wl");
        b1.b("a_w_get");
        b1.a(500);
        a(context, net.youmi.android.a.c.d.c.a(context, s, b1));
        return;
    }

    private void b(Context context, EarnPointsOrderList earnpointsorderlist)
    {
        int i = 0;
_L2:
        int j = earnpointsorderlist.size();
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        EarnPointsOrderInfo earnpointsorderinfo = earnpointsorderlist.get(i);
        if (earnpointsorderinfo == null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        boolean flag;
        if (earnpointsorderinfo.getPoints() <= 0)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        net.youmi.android.offers.d.b.f.a(context, earnpointsorderinfo);
        flag = e.a(context).a(earnpointsorderinfo.getPoints());
        if (!flag);
_L3:
        i++;
        if (true) goto _L2; else goto _L1
        context;
        throw context;
        context;
_L1:
        return;
        Throwable throwable;
        throwable;
          goto _L3
    }

    private void b(Context context, JSONObject jsonobject)
    {
        Object obj;
        Object obj1;
        String s;
        JSONArray jsonarray;
        Object obj2;
        String s1;
        String s2;
        String s3;
        int i;
        int j;
        int l;
        int i1;
        int j1;
        long l1;
        try
        {
            s = net.youmi.android.a.b.b.b.a(jsonobject, "u", null);
            obj = net.youmi.android.a.b.b.b.a(jsonobject, "acck", null);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        net.youmi.android.a.b.c.f.a(context, net.youmi.android.offers.b.a.a(), ((String) (obj)), -1L);
        jsonobject = net.youmi.android.a.b.b.b.a(jsonobject, "d", null);
        if (jsonobject == null)
        {
            return;
        }
        jsonarray = net.youmi.android.a.b.b.b.a(jsonobject, "os", null);
        if (jsonarray == null)
        {
            break MISSING_BLOCK_LABEL_414;
        }
        i = 0;
        jsonobject = null;
_L5:
        if (i >= jsonarray.length()) goto _L2; else goto _L1
_L1:
        obj2 = net.youmi.android.a.b.b.b.a(jsonarray, i, null);
        if (obj2 != null) goto _L4; else goto _L3
_L3:
        obj = jsonobject;
_L7:
        i++;
        jsonobject = ((JSONObject) (obj));
          goto _L5
_L4:
        obj1 = jsonobject;
        j = net.youmi.android.a.b.b.b.a(((JSONObject) (obj2)), "points", 0);
        obj = jsonobject;
        if (j <= 0) goto _L7; else goto _L6
_L6:
        obj1 = jsonobject;
        obj = net.youmi.android.a.b.b.b.a(((JSONObject) (obj2)), "oid", null);
        obj1 = jsonobject;
        l = net.youmi.android.a.b.b.b.a(((JSONObject) (obj2)), "chn", 0);
        obj1 = jsonobject;
        s1 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj2)), "user", null);
        obj1 = jsonobject;
        i1 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj2)), "status", 0);
        obj1 = jsonobject;
        s2 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj2)), "msg", null);
        obj1 = jsonobject;
        j1 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj2)), "wadid", 0);
        obj1 = jsonobject;
        s3 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj2)), "name", null);
        obj1 = jsonobject;
        l1 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj2)), "time", 0L);
        obj1 = jsonobject;
        obj2 = new EarnPointsOrderInfo();
        obj1 = jsonobject;
        ((EarnPointsOrderInfo) (obj2)).a(l);
        obj1 = jsonobject;
        ((EarnPointsOrderInfo) (obj2)).c(s2);
        obj1 = jsonobject;
        ((EarnPointsOrderInfo) (obj2)).d(s3);
        obj1 = jsonobject;
        ((EarnPointsOrderInfo) (obj2)).a(((String) (obj)));
        obj1 = jsonobject;
        ((EarnPointsOrderInfo) (obj2)).c(j);
        obj1 = jsonobject;
        ((EarnPointsOrderInfo) (obj2)).b(i1);
        obj1 = jsonobject;
        ((EarnPointsOrderInfo) (obj2)).a(l1 * 1000L);
        obj1 = jsonobject;
        ((EarnPointsOrderInfo) (obj2)).b(s1);
        obj1 = jsonobject;
        ((EarnPointsOrderInfo) (obj2)).d(j1);
        obj = jsonobject;
        if (jsonobject != null)
        {
            break MISSING_BLOCK_LABEL_356;
        }
        obj1 = jsonobject;
        jsonobject = new EarnPointsOrderList();
        jsonobject.a(s);
        obj = jsonobject;
        obj1 = obj;
        try
        {
            ((EarnPointsOrderList) (obj)).a(((EarnPointsOrderInfo) (obj2)));
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            obj = obj1;
        }
          goto _L7
_L2:
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_414;
        }
        if (jsonobject.size() != 0)
        {
            a(context, jsonobject);
            b(context, ((EarnPointsOrderList) (jsonobject)));
            c(context, jsonobject);
            return;
        }
        break MISSING_BLOCK_LABEL_414;
        Throwable throwable;
        throwable;
        throwable = jsonobject;
          goto _L7
    }

    private void c(Context context, EarnPointsOrderList earnpointsorderlist)
    {
        net.youmi.android.a.c.a.a(new g(this, context, earnpointsorderlist));
    }

    private void c(Context context, JSONObject jsonobject)
    {
    }

    public void a(Context context)
    {
        Context context1;
        Context context2 = null;
        try
        {
            context1 = context.getApplicationContext();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            h.c(context2);
            return;
        }
        finally
        {
            context1 = null;
        }
        if (context1 == null)
        {
            h.c(context1);
            return;
        }
        context2 = context1;
        k.c(context);
        context2 = context1;
        b(context1);
        h.c(context1);
        return;
_L2:
        h.c(context1);
        throw context;
        context;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
