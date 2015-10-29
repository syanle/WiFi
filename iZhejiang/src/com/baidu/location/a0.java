// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.wifi.ScanResult;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Messenger;
import android.os.PowerManager;
import android.os.RemoteException;
import android.text.TextUtils;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

// Referenced classes of package com.baidu.location:
//            n, f, m, aq, 
//            t, ar, Jni, i, 
//            s, au, v, ag, 
//            b

class a0
    implements n
{
    private class a extends s
    {

        private static final String dQ = "fence";
        private static final String dS = "bloc";
        private static final String dT = "ext";
        private static final String dU = "error";
        private static final String dW = "in";
        final a0 dP;
        private aq dR;
        private final String dV;

        private void ah()
            throws RemoteException
        {
            a0._mthif(dP, false);
            au._mthfor(f.getServiceContext())._mthif(dR);
            if (a0._mthchar(dP) != null)
            {
                Message message = Message.obtain(null, 209);
                Bundle bundle = new Bundle();
                bundle.putString("geofence_id", dR.getGeofenceId());
                message.setData(bundle);
                a0._mthchar(dP).send(message);
            }
        }

        private void aj()
            throws RemoteException
        {
            a0._mthif(dP, false);
            a0._mthgoto(dP).put(dR.getGeofenceId(), Long.valueOf(System.currentTimeMillis()));
            au._mthfor(f.getServiceContext())._mthdo(dR);
            if (a0._mthchar(dP) != null)
            {
                Message message = Message.obtain(null, 208);
                Bundle bundle = new Bundle();
                bundle.putString("geofence_id", dR.getGeofenceId());
                message.setData(bundle);
                a0._mthchar(dP).send(message);
            }
        }

        void T()
        {
            cR = "http://loc.map.baidu.com/fence";
            Object obj = new DecimalFormat("0.00000");
            String s1 = ((DecimalFormat) (obj)).format(dR.a());
            String s2 = ((DecimalFormat) (obj)).format(dR._mthcase());
            float f1 = dR._mthdo();
            String s3 = String.valueOf(dR._mthint());
            int j = au._mthdo(f.getServiceContext());
            String s4 = com.baidu.location.b.a.a._mthif(f.getServiceContext());
            int k = dR._mthchar();
            if (ar.bW().bZ())
            {
                obj = "1";
            } else
            {
                obj = "0";
            }
            obj = Jni.i(String.format("&x=%s&y=%s&r=%s&coord=%s&type=%s&cu=%s&fence_type=%s&wf_on=%s", new Object[] {
                s1, s2, String.valueOf(f1), s3, Integer.valueOf(j), s4, Integer.valueOf(k), obj
            }));
            cT.add(new BasicNameValuePair("fence", ((String) (obj))));
            cT.add(new BasicNameValuePair("bloc", dV));
            cT.add(new BasicNameValuePair("ext", Jni.i(String.format(Locale.CHINA, "&ki=%s&sn=%s", new Object[] {
                v.a(f.getServiceContext()), v._mthif(f.getServiceContext())
            }))));
        }

        public void ai()
        {
            N();
        }

        void _mthdo(boolean flag)
        {
            int j = 0;
            a0._mthdo(dP, false);
            if (!flag || cS == null)
            {
                break MISSING_BLOCK_LABEL_179;
            }
            JSONObject jsonobject;
            int k;
            try
            {
                jsonobject = new JSONObject(EntityUtils.toString(cS, "UTF-8"));
            }
            catch (Exception exception)
            {
                return;
            }
            if (jsonobject == null)
            {
                break MISSING_BLOCK_LABEL_179;
            }
            k = Integer.valueOf(jsonobject.getString("error")).intValue();
            if (jsonobject.has("in"))
            {
                j = Integer.valueOf(jsonobject.getString("in")).intValue();
            }
            if (k != 0)
            {
                break MISSING_BLOCK_LABEL_179;
            }
            a0._mthdo(dP, null);
            a0._mthif(dP, null);
            au._mthfor(f.getServiceContext()).b7();
            if (!a0._mthtry(dP))
            {
                break MISSING_BLOCK_LABEL_140;
            }
            if (j != 1)
            {
                break MISSING_BLOCK_LABEL_131;
            }
            aj();
            return;
            if (j != 0)
            {
                break MISSING_BLOCK_LABEL_179;
            }
            ah();
            return;
            if (j != 1)
            {
                break MISSING_BLOCK_LABEL_161;
            }
            if (dR._mthtry() == 1)
            {
                aj();
                return;
            }
            if (j != 0)
            {
                break MISSING_BLOCK_LABEL_179;
            }
            if (dR._mthtry() == 0)
            {
                ah();
            }
        }

        public a(aq aq1, String s1)
        {
            dP = a0.this;
            super();
            dR = aq1;
            dV = s1;
            cT = new ArrayList();
        }
    }

    private class b extends ag
    {

        final a0 eC;

        void at()
        {
        }

        void _mthbyte(Message message)
        {
        }

        private b()
        {
            eC = a0.this;
            super();
        }

    }

    public class c extends BroadcastReceiver
    {

        final a0 a;

        public void onReceive(Context context, Intent intent)
        {
            a0._mthif(a, context);
            a0._mthbyte(a).post(a0._mthif(a));
        }

        public c()
        {
            a = a0.this;
            super();
        }
    }

    private class d
        implements Runnable, com.baidu.location.b
    {

        final a0 kQ;

        public void run()
        {
            try
            {
                List list = a0._mthfor(kQ, true);
                if (!a0._mthfor(kQ).equals(a0._mthcase(kQ)) || a0._mthelse(kQ) || !a0._mthnew(kQ))
                {
                    a0._mthdo(kQ, a0._mthfor(kQ));
                    a0._mthif(kQ, a0._mthint(kQ));
                    t.a a1 = t.an().ak();
                    String s = Jni.j(String.format("%s|%s|%s|0", new Object[] {
                        Integer.valueOf(a1._flddo), Integer.valueOf(a1._fldif), Integer.valueOf(a1._fldfor)
                    }));
                    a0._mthif(kQ, String.format("%s|%s|%s|0", new Object[] {
                        Integer.valueOf(a1._flddo), Integer.valueOf(a1._fldif), Integer.valueOf(a1._fldfor)
                    }));
                    a0._mthif(kQ, kQ._mthfor(s, true));
                    a0._mthdo(kQ, kQ._mthfor(s, false));
                    a0._mthfor(kQ, list);
                    a0._mthdo(kQ);
                }
                return;
            }
            catch (Exception exception)
            {
                kQ._mthif(f.getServiceContext(), 0x57e40);
            }
        }

        private d()
        {
            kQ = a0.this;
            super();
        }

    }


    public static final long i2 = 0x1b7740L;
    private static final String i4 = "1";
    private static final String iR = "GeofenceStrategyService";
    private static final int iT = 30000;
    private static final int iU = 0x57e40;
    private static final int iW = 6;
    private static final String iZ = "GeofenceStrategyService";
    private static final String ja = "com.baidu.locsdk.geofence.geofencestrategyservice";
    private static final int jb = 0x2bf20;
    private static final int jd = 60000;
    public static a0 jf;
    private static final String jh = "0";
    public static final String ji = "http://loc.map.baidu.com/fence";
    private static final String jk = "&gf=1";
    private String i0;
    private d i1;
    private boolean i3;
    private Handler i5;
    private Map i6;
    private String i7;
    private c i8;
    private android.os.PowerManager.WakeLock i9;
    private List iS;
    private String iV;
    private boolean iX;
    private boolean iY;
    private int jc;
    private HandlerThread je;
    private Messenger jg;
    private ar.b jj;
    private List jl;
    private ar.b jm;

    a0()
    {
        i6 = new HashMap();
        i5 = new Handler();
        i3 = true;
    }

    static Handler _mthbyte(a0 a0_1)
    {
        return a0_1.i5;
    }

    private void _mthbyte(Context context)
    {
        if (i9 == null)
        {
            i9 = ((PowerManager)context.getSystemService("power")).newWakeLock(1, "GeofenceStrategyService");
            i9.setReferenceCounted(false);
            i9.acquire(60000L);
        }
    }

    static String _mthcase(a0 a0_1)
    {
        return a0_1.i7;
    }

    static Messenger _mthchar(a0 a0_1)
    {
        return a0_1.jg;
    }

    public static a0 cq()
    {
        if (jf == null)
        {
            jf = new a0();
            jf.cv();
        }
        return jf;
    }

    private Map cr()
    {
        Cursor cursor;
        Cursor cursor1;
        Cursor cursor2;
        String s;
        HashMap hashmap;
        SQLiteDatabase sqlitedatabase;
        s = null;
        cursor2 = null;
        hashmap = new HashMap();
        sqlitedatabase = m.a(f.getServiceContext()).getReadableDatabase();
        cursor1 = cursor2;
        cursor = s;
        long l = System.currentTimeMillis();
        cursor1 = cursor2;
        cursor = s;
        cursor2 = sqlitedatabase.rawQuery(String.format("SELECT a.ap, b.geofence_id FROM %s AS a LEFT JOIN %s AS b WHERE (a.geofence_id = b.geofence_id) AND ((b.valid_date + b.duration_millis) >= %d) AND (b.next_exit_active_time < %d) ", new Object[] {
            "geofence_detail", "geofence", Long.valueOf(l), Long.valueOf(l)
        }), null);
        if (cursor2 == null) goto _L2; else goto _L1
_L1:
        cursor1 = cursor2;
        cursor = cursor2;
        if (cursor2.getCount() <= 0) goto _L2; else goto _L3
_L3:
        cursor1 = cursor2;
        cursor = cursor2;
        cursor2.moveToFirst();
        cursor1 = cursor2;
        cursor = cursor2;
        int j = cursor2.getColumnIndex("geofence_id");
        cursor1 = cursor2;
        cursor = cursor2;
        int k = cursor2.getColumnIndex("ap");
_L6:
        cursor1 = cursor2;
        cursor = cursor2;
        s = cursor2.getString(j);
        cursor1 = cursor2;
        cursor = cursor2;
        String s1 = cursor2.getString(k);
        cursor1 = cursor2;
        cursor = cursor2;
        if (!hashmap.containsKey(s)) goto _L5; else goto _L4
_L4:
        cursor1 = cursor2;
        cursor = cursor2;
        ((List)hashmap.get(s)).add(s1);
_L7:
        cursor1 = cursor2;
        cursor = cursor2;
        boolean flag = cursor2.moveToNext();
        if (flag) goto _L6; else goto _L2
_L2:
        if (cursor2 != null)
        {
            cursor2.close();
        }
_L8:
        sqlitedatabase.close();
        return hashmap;
_L5:
        cursor1 = cursor2;
        cursor = cursor2;
        ArrayList arraylist = new ArrayList();
        cursor1 = cursor2;
        cursor = cursor2;
        arraylist.add(s1);
        cursor1 = cursor2;
        cursor = cursor2;
        hashmap.put(s, arraylist);
          goto _L7
        Exception exception1;
        exception1;
        cursor = cursor1;
        exception1.printStackTrace();
        if (cursor1 != null)
        {
            cursor1.close();
        }
          goto _L8
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
          goto _L7
    }

    private boolean cs()
    {
        if (jj != null)
        {
            if (jm == jj)
            {
                return false;
            }
            if (jj.a(jm))
            {
                return false;
            }
        }
        return true;
    }

    private void ct()
    {
        if (iX)
        {
            _mthif(f.getServiceContext(), 30000);
            return;
        }
        if (jc > 0)
        {
            Context context = f.getServiceContext();
            int j;
            if (jc >= 6)
            {
                j = 0x2bf20;
            } else
            {
                j = jc * 30000;
            }
            _mthif(context, j);
            return;
        }
        if (jl != null && jl.size() > 0)
        {
            Iterator iterator = jl.iterator();
            boolean flag = false;
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                aq aq1 = (aq)iterator.next();
                if (!aq1._mthif() && !aq1._mthfor())
                {
                    _mthfor(aq1);
                    flag = true;
                }
            } while (true);
            boolean flag1 = flag;
            if (iS != null)
            {
                flag1 = flag;
                if (iS.size() > 0)
                {
                    Iterator iterator1 = iS.iterator();
                    do
                    {
                        flag1 = flag;
                        if (!iterator1.hasNext())
                        {
                            break;
                        }
                        aq aq2 = (aq)iterator1.next();
                        if (!aq2._mthif() && !aq2._mthfor())
                        {
                            _mthfor(aq2);
                            flag = true;
                        }
                    } while (true);
                }
            }
            if (flag1)
            {
                _mthif(f.getServiceContext(), 30000);
                return;
            } else
            {
                _mthif(f.getServiceContext(), 0x2bf20);
                return;
            }
        } else
        {
            _mthif(f.getServiceContext(), 0x57e40);
            return;
        }
    }

    private void cu()
    {
        if (i9 != null && i9.isHeld())
        {
            i9.release();
            i9 = null;
        }
    }

    private void cv()
    {
        je = new HandlerThread("GeofenceStrategyService", 10);
        je.start();
        i5 = new Handler(je.getLooper());
        i1 = new d();
    }

    static String _mthdo(a0 a0_1, String s)
    {
        a0_1.i7 = s;
        return s;
    }

    static List _mthdo(a0 a0_1, List list)
    {
        a0_1.iS = list;
        return list;
    }

    static void _mthdo(a0 a0_1)
    {
        a0_1.ct();
    }

    static boolean _mthdo(a0 a0_1, boolean flag)
    {
        a0_1.iX = flag;
        return flag;
    }

    private List _mthelse(boolean flag)
    {
        t.a a1 = t.an().ak();
        jm = ar.bW().bS();
        ArrayList arraylist = new ArrayList();
        if (flag)
        {
            i0 = String.format("%s|%s|%s|%s", new Object[] {
                Integer.valueOf(a1._flddo), Integer.valueOf(a1._fldif), Integer.valueOf(a1._fldfor), Integer.valueOf(a1._fldtry)
            });
            arraylist.add(Jni.j(i0));
        }
        if (jm != null)
        {
            Object obj = jm._fldfor;
            if (obj != null)
            {
                obj = ((List) (obj)).iterator();
                do
                {
                    if (!((Iterator) (obj)).hasNext())
                    {
                        break;
                    }
                    ScanResult scanresult = (ScanResult)((Iterator) (obj)).next();
                    if (scanresult != null)
                    {
                        arraylist.add(Jni.j(scanresult.BSSID.replace(":", "")));
                    }
                } while (true);
            }
        }
        return arraylist;
    }

    static boolean _mthelse(a0 a0_1)
    {
        return a0_1.cs();
    }

    static String _mthfor(a0 a0_1)
    {
        return a0_1.i0;
    }

    static List _mthfor(a0 a0_1, boolean flag)
    {
        return a0_1._mthelse(flag);
    }

    static void _mthfor(a0 a0_1, List list)
    {
        a0_1._mthfor(list);
    }

    private void _mthfor(List list)
    {
        if (list != null && list.size() != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        List list1;
        int j1 = list.size();
        for (int j = 0; j < j1; j++)
        {
            list.set(j, String.format("'%s'", new Object[] {
                list.get(j)
            }));
        }

        list1 = _mthif(list, true);
        if (list1 != null)
        {
            for (list = list1.iterator(); list.hasNext();)
            {
                aq aq3 = (aq)list.next();
                Iterator iterator = i6.entrySet().iterator();
                while (iterator.hasNext()) 
                {
                    java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                    if (System.currentTimeMillis() - ((Long)entry.getValue()).longValue() >= 0x1b7740L)
                    {
                        iterator.remove();
                    }
                    if (aq3.getGeofenceId().equals(entry.getKey()))
                    {
                        list.remove();
                    }
                }
            }

        }
        list = _mthelse(false);
        if (list == null || list.size() <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        Map map = cr();
        if (map.size() > 0)
        {
            Iterator iterator1 = list.iterator();
label0:
            do
            {
                if (!iterator1.hasNext())
                {
                    break;
                }
                String s = (String)iterator1.next();
                Iterator iterator2 = map.entrySet().iterator();
                do
                {
                    if (!iterator2.hasNext())
                    {
                        continue label0;
                    }
                } while (!((List)((java.util.Map.Entry)iterator2.next()).getValue()).contains(s));
                iterator2.remove();
            } while (true);
        }
        if (map.size() <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        list.clear();
        list.addAll(map.keySet());
        j1 = list.size();
        for (int k = 0; k < j1; k++)
        {
            list.set(k, String.format("'%s'", new Object[] {
                list.get(k)
            }));
        }

        list = _mthif(list, false);
_L4:
        ArrayList arraylist = new ArrayList();
        if (list1 != null)
        {
            arraylist.addAll(list1);
        }
        if (list != null)
        {
            list = list.iterator();
            do
            {
                if (!list.hasNext())
                {
                    break;
                }
                aq aq1 = (aq)list.next();
                if (!arraylist.contains(aq1) || i3)
                {
                    arraylist.add(aq1);
                }
            } while (true);
        }
        if (arraylist != null && arraylist.size() > 0)
        {
            list = arraylist.iterator();
            while (list.hasNext()) 
            {
                aq aq2 = (aq)list.next();
                if (aq2 != null)
                {
                    iX = true;
                    _mthfor(aq2);
                    i7 = i0;
                    jj = jm;
                    jc = 0;
                } else
                {
                    iX = false;
                    jc = jc + 1;
                    int l;
                    if (jc == 0x7fffffff)
                    {
                        l = 1;
                    } else
                    {
                        l = jc;
                    }
                    jc = l;
                }
            }
        } else
        {
            iX = false;
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        list = null;
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }

    static Map _mthgoto(a0 a0_1)
    {
        return a0_1.i6;
    }

    static d _mthif(a0 a0_1)
    {
        return a0_1.i1;
    }

    static ar.b _mthif(a0 a0_1, ar.b b1)
    {
        a0_1.jj = b1;
        return b1;
    }

    static String _mthif(a0 a0_1, String s)
    {
        a0_1.iV = s;
        return s;
    }

    static List _mthif(a0 a0_1, List list)
    {
        a0_1.jl = list;
        return list;
    }

    static void _mthif(a0 a0_1, Context context)
    {
        a0_1._mthbyte(context);
    }

    static boolean _mthif(a0 a0_1, boolean flag)
    {
        a0_1.i3 = flag;
        return flag;
    }

    static ar.b _mthint(a0 a0_1)
    {
        return a0_1.jm;
    }

    static boolean _mthnew(a0 a0_1)
    {
        return a0_1.iX;
    }

    static boolean _mthtry(a0 a0_1)
    {
        return a0_1.i3;
    }

    public List _mthfor(String s, boolean flag)
    {
        Object obj1;
        String s2;
        Object obj2;
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = m.a(f.getServiceContext()).getReadableDatabase();
        obj1 = null;
        s2 = null;
        obj2 = null;
        if (sqlitedatabase == null) goto _L2; else goto _L1
_L1:
        Object obj;
        long l3;
        obj = null;
        l3 = System.currentTimeMillis();
        if (!flag) goto _L4; else goto _L3
_L3:
        s = String.format("SELECT distinct b.geofence_id, b.longitude, b.latitude, b.radius, b.coord_type, b.duration_millis, b.is_lac, b.is_cell, b.is_wifi, b.radius_type FROM %s AS a LEFT JOIN %s AS b WHERE (a.geofence_id = b.geofence_id) AND (a.ap = '%s' AND  (b.valid_date + b.duration_millis >= %d) AND b.next_active_time < %d)", new Object[] {
            "geofence_detail", "geofence", s, Long.valueOf(l3), Long.valueOf(l3)
        });
_L9:
        s = sqlitedatabase.rawQuery(s, null);
        obj = obj2;
        if (s == null) goto _L6; else goto _L5
_L5:
        obj = obj2;
        if (s.getCount() <= 0) goto _L6; else goto _L7
_L7:
        obj = new ArrayList();
        int k;
        int l;
        int j1;
        int k1;
        int l1;
        int j2;
        int k2;
        int l2;
        int j3;
        int k3;
        s.moveToFirst();
        k = s.getColumnIndex("geofence_id");
        l = s.getColumnIndex("longitude");
        j1 = s.getColumnIndex("latitude");
        k1 = s.getColumnIndex("radius");
        l1 = s.getColumnIndex("coord_type");
        j2 = s.getColumnIndex("duration_millis");
        k2 = s.getColumnIndex("is_lac");
        l2 = s.getColumnIndex("is_cell");
        j3 = s.getColumnIndex("is_wifi");
        k3 = s.getColumnIndex("radius_type");
_L8:
        float f1;
        float f2;
        float f3;
        obj1 = s.getString(k);
        f1 = Float.valueOf(s.getString(l)).floatValue();
        f2 = Float.valueOf(s.getString(j1)).floatValue();
        f3 = Float.valueOf(s.getString(k1)).floatValue();
        s2 = s.getString(l1);
        l3 = s.getLong(j2);
        int j;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        if (s.getInt(k2) != 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (s.getInt(l2) != 0)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (s.getInt(j3) != 0)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        j = s.getInt(k3);
        obj1 = new aq(((String) (obj1)), f1, f2, j, l3, s2);
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_437;
        }
        ((aq) (obj1)).a(f3);
        ((aq) (obj1))._mthdo(flag1);
        ((aq) (obj1)).a(flag2);
        ((aq) (obj1))._mthif(flag3);
        if (i3)
        {
            break MISSING_BLOCK_LABEL_437;
        }
        if (flag)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        ((aq) (obj1)).a(j);
        ((List) (obj)).add(obj1);
        flag1 = s.moveToNext();
        if (flag1) goto _L8; else goto _L6
_L6:
        obj1 = obj;
        if (s != null)
        {
            s.close();
            obj1 = obj;
        }
_L10:
        sqlitedatabase.close();
_L2:
        return ((List) (obj1));
_L4:
        s = String.format("SELECT distinct b.geofence_id, b.longitude, b.latitude, b.radius, b.coord_type, b.duration_millis, b.is_lac, b.is_cell, b.is_wifi, b.radius_type FROM %s AS a LEFT JOIN %s AS b WHERE (a.geofence_id = b.geofence_id) AND (a.ap <> '%s' AND  (b.valid_date + b.duration_millis >= %d) AND b.next_exit_active_time < %d)", new Object[] {
            "geofence_detail", "geofence", s, Long.valueOf(l3), Long.valueOf(l3)
        });
          goto _L9
        s;
        s = s2;
_L13:
        obj1 = s;
        if (obj != null)
        {
            ((Cursor) (obj)).close();
            obj1 = s;
        }
          goto _L10
        obj;
        s = null;
_L12:
        if (s != null)
        {
            s.close();
        }
        throw obj;
        obj;
        if (true) goto _L12; else goto _L11
_L11:
        obj;
        obj = s;
        s = s2;
          goto _L13
        Exception exception;
        exception;
        String s1 = s;
        s = ((String) (obj));
        obj = s1;
          goto _L13
    }

    public void _mthfor(aq aq1)
    {
        (new a(aq1, Jni.i((new b()).e("&gf=1").replace("gcj02", aq1._mthint())))).ai();
    }

    public List _mthif(List list, boolean flag)
    {
        Object obj1;
        String s;
        Object obj2;
        SQLiteDatabase sqlitedatabase;
        list = TextUtils.join(",", list);
        sqlitedatabase = m.a(f.getServiceContext()).getReadableDatabase();
        obj1 = null;
        s = null;
        obj2 = null;
        if (sqlitedatabase == null) goto _L2; else goto _L1
_L1:
        Object obj = null;
        long l3 = System.currentTimeMillis();
        if (!flag) goto _L4; else goto _L3
_L3:
        list = String.format("SELECT distinct b.geofence_id, b.longitude, b.latitude, b.radius, b.coord_type, b.duration_millis, b.is_lac, b.is_cell, b.is_wifi, b.radius_type FROM %s AS a LEFT JOIN %s AS b WHERE (a.geofence_id = b.geofence_id) AND (a.ap IN (%s) AND  (b.valid_date + b.duration_millis) >= %d) AND (b.next_active_time < %d)", new Object[] {
            "geofence_detail", "geofence", list, Long.valueOf(l3), Long.valueOf(l3)
        });
_L9:
        list = sqlitedatabase.rawQuery(list, null);
        obj = obj2;
        if (list == null) goto _L6; else goto _L5
_L5:
        obj = obj2;
        if (list.getCount() <= 0) goto _L6; else goto _L7
_L7:
        obj = new ArrayList();
        int k;
        int l;
        int j1;
        int k1;
        int l1;
        int j2;
        int k2;
        int l2;
        int j3;
        int k3;
        ((List) (obj)).clear();
        list.moveToFirst();
        k = list.getColumnIndex("geofence_id");
        l = list.getColumnIndex("longitude");
        j1 = list.getColumnIndex("latitude");
        k1 = list.getColumnIndex("radius");
        l1 = list.getColumnIndex("coord_type");
        j2 = list.getColumnIndex("duration_millis");
        k2 = list.getColumnIndex("is_lac");
        l2 = list.getColumnIndex("is_cell");
        j3 = list.getColumnIndex("is_wifi");
        k3 = list.getColumnIndex("radius_type");
_L8:
        float f1;
        float f2;
        float f3;
        obj1 = list.getString(k);
        f1 = Float.valueOf(list.getString(l)).floatValue();
        f2 = Float.valueOf(list.getString(j1)).floatValue();
        f3 = Float.valueOf(list.getString(k1)).floatValue();
        s = list.getString(l1);
        l3 = list.getLong(j2);
        int j;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        if (list.getInt(k2) != 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (list.getInt(l2) != 0)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (list.getInt(j3) != 0)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        j = list.getInt(k3);
        obj1 = new aq(((String) (obj1)), f1, f2, j, l3, s);
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_452;
        }
        ((aq) (obj1)).a(f3);
        ((aq) (obj1))._mthdo(flag1);
        ((aq) (obj1)).a(flag2);
        ((aq) (obj1))._mthif(flag3);
        if (i3)
        {
            break MISSING_BLOCK_LABEL_452;
        }
        if (flag)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        ((aq) (obj1)).a(j);
        ((List) (obj)).add(obj1);
        flag1 = list.moveToNext();
        if (flag1) goto _L8; else goto _L6
_L6:
        obj1 = obj;
        if (list != null)
        {
            list.close();
            obj1 = obj;
        }
_L10:
        sqlitedatabase.close();
_L2:
        return ((List) (obj1));
_L4:
        list = String.format("SELECT distinct b.geofence_id, b.longitude, b.latitude, b.radius, b.coord_type, b.duration_millis, b.is_lac, b.is_cell, b.is_wifi, b.radius_type FROM %s AS a LEFT JOIN %s AS b WHERE (a.geofence_id = b.geofence_id) AND (b.geofence_id IN (%s) AND  (b.valid_date + b.duration_millis) >= %d) AND (b.next_exit_active_time < %d)", new Object[] {
            "geofence_detail", "geofence", list, Long.valueOf(l3), Long.valueOf(l3)
        });
          goto _L9
        list;
        list = s;
_L13:
        obj1 = list;
        if (obj != null)
        {
            ((Cursor) (obj)).close();
            obj1 = list;
        }
          goto _L10
        obj;
        list = null;
_L12:
        if (list != null)
        {
            list.close();
        }
        throw obj;
        obj;
        if (true) goto _L12; else goto _L11
_L11:
        obj;
        obj = list;
        list = s;
          goto _L13
        Exception exception;
        exception;
        List list1 = list;
        list = ((List) (obj));
        obj = list1;
          goto _L13
    }

    public void _mthif(Context context, int j)
    {
        Intent intent = new Intent("com.baidu.locsdk.geofence.geofencestrategyservice");
        PendingIntent pendingintent = PendingIntent.getBroadcast(context, 0, intent, 0x8000000);
        if (j <= 0)
        {
            i.a(context, pendingintent);
            context.sendBroadcast(intent);
            return;
        } else
        {
            i.a(context, pendingintent, j);
            return;
        }
    }

    public void _mthif(Context context, Message message)
    {
        if (iY)
        {
            return;
        } else
        {
            jg = message.replyTo;
            iY = true;
            i8 = new c();
            context.registerReceiver(i8, new IntentFilter("com.baidu.locsdk.geofence.geofencestrategyservice"));
            _mthif(context, 0);
            return;
        }
    }

    public void _mthnew(Context context)
    {
        _mthif(context, ((Message) (null)));
    }

    public void _mthtry(Context context)
    {
        iY = false;
        i.a(context, PendingIntent.getBroadcast(context, 0, new Intent("com.baidu.locsdk.geofence.geofencestrategyservice"), 0x8000000));
        cu();
        if (i8 == null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        context.unregisterReceiver(i8);
        return;
        context;
    }
}
