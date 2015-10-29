// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.f;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import java.lang.reflect.Method;
import net.youmi.android.a.b.k.k;

public class a
{

    private static int a = -1;
    private static int b = -1;
    private static int c = -1;
    private static int d = -1;
    private static int e = -1;
    private static String f;

    public static String a(Context context)
    {
        net/youmi/android/a/a/f/a;
        JVM INSTR monitorenter ;
        if (f == null || f.length() <= 0) goto _L2; else goto _L1
_L1:
        context = f;
_L3:
        net/youmi/android/a/a/f/a;
        JVM INSTR monitorexit ;
        return context;
_L2:
        if (k.f(context) || k.e(context))
        {
            break MISSING_BLOCK_LABEL_47;
        }
        context = "";
          goto _L3
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        if (telephonymanager == null) goto _L5; else goto _L4
_L4:
        Object obj1;
        Object obj2;
        Object obj3;
        obj2 = "";
        obj3 = "";
        obj1 = obj2;
        String s = telephonymanager.getNetworkOperator().trim();
        Object obj;
        obj = obj3;
        context = ((Context) (obj2));
        obj1 = obj2;
        if (s.length() <= 3)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        obj1 = obj2;
        context = s.substring(0, 3);
        obj1 = context;
        Method amethod[];
        int i;
        try
        {
            obj = s.substring(3);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            obj = obj3;
            context = ((Context) (obj1));
        }
        if (context.length() == 0) goto _L7; else goto _L6
_L6:
        i = ((String) (obj)).length();
        if (i != 0) goto _L8; else goto _L7
_L7:
        obj1 = context;
        s = telephonymanager.getSubscriberId();
        obj2 = obj;
        obj3 = context;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_201;
        }
        obj1 = context;
        s = s.trim();
        obj2 = obj;
        obj3 = context;
        obj1 = context;
        if (s.length() <= 5)
        {
            break MISSING_BLOCK_LABEL_201;
        }
        obj1 = context;
        obj3 = s.substring(0, 3);
        obj1 = obj3;
        obj2 = s.substring(3, 5);
        obj = obj3;
        context = ((Context) (obj2));
_L18:
        i = telephonymanager.getPhoneType();
        if (i != 1) goto _L10; else goto _L9
_L9:
label0:
        {
            if (a <= -1 || b <= -1)
            {
                break label0;
            }
            f = (new StringBuilder()).append("0|").append(((String) (obj))).append("|").append(context).append("|").append(a).append("|").append(b).toString();
            context = f;
        }
          goto _L3
        obj1 = (GsmCellLocation)telephonymanager.getCellLocation();
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_320;
        }
        a = ((GsmCellLocation) (obj1)).getCid();
        b = ((GsmCellLocation) (obj1)).getLac();
        if (a <= -1 && b <= -1) goto _L5; else goto _L11
_L11:
        f = (new StringBuilder()).append("0|").append(((String) (obj))).append("|").append(context).append("|").append(a).append("|").append(b).toString();
        context = f;
          goto _L3
_L10:
        if (i != 2) goto _L13; else goto _L12
_L12:
label1:
        {
            if (c <= -1 || e <= -1 || d <= -1)
            {
                break label1;
            }
            f = (new StringBuilder()).append("1|").append(((String) (obj))).append("|").append(context).append("|").append(c).append("|").append(e).append("|").append(d).toString();
            context = f;
        }
          goto _L3
        obj1 = telephonymanager.getCellLocation();
        amethod = obj1.getClass().getMethods();
        if (amethod == null) goto _L15; else goto _L14
_L14:
        i = 0;
_L19:
        if (i >= amethod.length) goto _L15; else goto _L16
_L16:
        obj3 = amethod[i];
        if (obj3 == null)
        {
            break MISSING_BLOCK_LABEL_779;
        }
        if (((Method) (obj3)).getName().equals("getBaseStationId"))
        {
            c = ((Integer)((Method) (obj3)).invoke(obj1, new Object[0])).intValue();
            break MISSING_BLOCK_LABEL_779;
        }
        break MISSING_BLOCK_LABEL_566;
_L5:
        context = "";
          goto _L3
        if (((Method) (obj3)).getName().equals("getNetworkId"))
        {
            e = ((Integer)((Method) (obj3)).invoke(obj1, new Object[0])).intValue();
            break MISSING_BLOCK_LABEL_779;
        }
        try
        {
            if (((Method) (obj3)).getName().equals("getSystemId"))
            {
                d = ((Integer)((Method) (obj3)).invoke(obj1, new Object[0])).intValue();
            }
            break MISSING_BLOCK_LABEL_779;
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        finally
        {
            throw context;
        }
          goto _L5
_L15:
        if (c <= -1 && e <= -1 && d <= -1) goto _L5; else goto _L17
_L17:
        f = (new StringBuilder()).append("1|").append(((String) (obj))).append("|").append(context).append("|").append(c).append("|").append(e).append("|").append(d).toString();
        context = f;
          goto _L3
_L13:
        f = "";
        context = f;
          goto _L3
_L8:
        obj1 = context;
        context = ((Context) (obj));
        obj = obj1;
          goto _L18
        context;
        context = ((Context) (obj));
        obj = obj1;
          goto _L18
        i++;
          goto _L19
    }

}
