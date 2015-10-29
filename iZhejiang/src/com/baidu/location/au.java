// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.ContentValues;
import android.content.Context;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

// Referenced classes of package com.baidu.location:
//            ax, n, m, s, 
//            aq, a0, f, GeofenceClient, 
//            an, Jni, v

class au
    implements ax, n
{
    private class a extends Handler
    {

        public static final int _flddo = 2;
        public static final int _fldfor = 3;
        public static final int _fldif = 0;
        final au a;

        public void handleMessage(Message message)
        {
            super.handleMessage(message);
            int j = message.what;
            Object obj = message.getData();
            switch (j)
            {
            case 1: // '\001'
            default:
                return;

            case 0: // '\0'
                int k;
                if (obj != null)
                {
                    k = ((Bundle) (obj)).getInt("status_code", 1);
                    obj = ((Bundle) (obj)).getString("geofence_id");
                } else
                {
                    k = 1;
                    obj = null;
                }
                message = (GeofenceClient.OnAddBDGeofencesResultListener)message.obj;
                au._mthif(a, k, ((String) (obj)), message);
                return;

            case 2: // '\002'
                if (obj != null)
                {
                    k = ((Bundle) (obj)).getInt("status_code", 1);
                    obj = ((Bundle) (obj)).getStringArray("geofence_ids");
                } else
                {
                    k = 1;
                    obj = null;
                }
                message = (GeofenceClient.OnRemoveBDGeofencesResultListener)message.obj;
                au._mthif(a, k, ((String []) (obj)), message);
                return;

            case 3: // '\003'
                a.b7();
                return;
            }
        }

        public a(Looper looper)
        {
            a = au.this;
            super(looper);
        }
    }

    class b extends s
    {

        private static final String dE = "error";
        private static final int dF = -3;
        private static final String dG = "ext";
        private static final String dH = "cl";
        private static final String dI = "fence";
        private static final String dJ = "lac";
        private static final String dL = "wf";
        private static final String dN = "radius";
        private GeofenceClient.OnAddBDGeofencesResultListener dD;
        final au dK;
        private int dM;
        private final aq dO;

        public void T()
        {
            cR = "http://loc.map.baidu.com/fence";
            Object obj = new DecimalFormat("0.00000");
            obj = Jni.i(String.format("&x=%s&y=%s&r=%s&coord=%s&type=%s&cu=%s&sdk=%s", new Object[] {
                ((DecimalFormat) (obj)).format(dO.a()), ((DecimalFormat) (obj)).format(dO._mthcase()), String.valueOf(dO._mthnew()), String.valueOf(dO._mthint()), Integer.valueOf(au._mthdo(au._mthif(dK))), com.baidu.location.b.a.a._mthif(au._mthif(dK)), Float.valueOf(4.2F)
            }));
            cT.add(new BasicNameValuePair("fence", ((String) (obj))));
            cT.add(new BasicNameValuePair("ext", Jni.i(String.format("&ki=%s&sn=%s", new Object[] {
                v.a(au._mthif(dK)), v._mthif(au._mthif(dK))
            }))));
        }

        public void ag()
        {
            N();
        }

        public void _mthdo(boolean flag)
        {
            Object obj;
            if (!flag || cS == null)
            {
                break MISSING_BLOCK_LABEL_355;
            }
            obj = null;
            float f1;
            String s1;
            JSONObject jsonobject;
            try
            {
                jsonobject = new JSONObject(EntityUtils.toString(cS, "UTF-8"));
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                au._mthif(dK, dD, 1, dO.getGeofenceId());
                return;
            }
            if (jsonobject == null)
            {
                break MISSING_BLOCK_LABEL_241;
            }
            obj = new StringBuilder();
            if (jsonobject.has("lac"))
            {
                s1 = jsonobject.getString("lac");
                if (!TextUtils.isEmpty(s1))
                {
                    ((StringBuilder) (obj)).append(s1);
                    dO._mthdo(true);
                }
            }
            if (jsonobject.has("cl"))
            {
                s1 = jsonobject.getString("cl");
                if (!TextUtils.isEmpty(s1))
                {
                    ((StringBuilder) (obj)).append(s1);
                    dO.a(true);
                }
            }
            if (jsonobject.has("wf"))
            {
                s1 = jsonobject.getString("wf");
                if (!TextUtils.isEmpty(s1))
                {
                    ((StringBuilder) (obj)).append(s1);
                    dO._mthif(true);
                }
            }
            s1 = ((StringBuilder) (obj)).toString();
            if (jsonobject.has("radius"))
            {
                f1 = Float.valueOf(jsonobject.getString("radius")).floatValue();
                dO.a(f1);
            }
            obj = s1;
            if (!jsonobject.has("error"))
            {
                break MISSING_BLOCK_LABEL_241;
            }
            dM = Integer.valueOf(jsonobject.getString("error")).intValue();
            obj = s1;
            if (TextUtils.isEmpty(((CharSequence) (obj))))
            {
                if (dM == -3)
                {
                    au._mthif(dK, dD, 1002, dO.getGeofenceId());
                    return;
                } else
                {
                    au._mthif(dK, dD, dM, dO.getGeofenceId());
                    return;
                }
            } else
            {
                au._mthdo(dK).post(dK. new c(dO, ((String) (obj)), dD));
                return;
            }
            au._mthif(dK, dD, 1, dO.getGeofenceId());
            return;
        }

        public b(aq aq1, GeofenceClient.OnAddBDGeofencesResultListener onaddbdgeofencesresultlistener)
        {
            dK = au.this;
            super();
            dO = aq1;
            dD = onaddbdgeofencesresultlistener;
            cT = new ArrayList();
        }
    }

    private class c
        implements Runnable
    {

        final au a;
        private final aq _flddo;
        private final GeofenceClient.OnAddBDGeofencesResultListener _fldfor;
        private final String _fldif;

        public void run()
        {
            int j = au._mthif(a, _flddo, _fldif);
            au._mthif(a, _fldfor, j, _flddo.getGeofenceId());
            if (f.getServiceContext() != null)
            {
                a0.cq()._mthfor(_flddo);
            }
        }

        public c(aq aq1, String s1, GeofenceClient.OnAddBDGeofencesResultListener onaddbdgeofencesresultlistener)
        {
            a = au.this;
            super();
            _flddo = aq1;
            _fldif = s1;
            _fldfor = onaddbdgeofencesresultlistener;
        }
    }

    private class d
        implements Runnable
    {

        final au a;
        private final GeofenceClient.OnRemoveBDGeofencesResultListener _flddo;
        private final List _fldif;

        public void run()
        {
            int j = au._mthif(a, _fldif);
            Message message = Message.obtain(au._mthdo(a));
            message.what = 2;
            message.obj = _flddo;
            Bundle bundle = new Bundle();
            bundle.putInt("status_code", j);
            bundle.putStringArray("geofence_ids", (String[])(String[])_fldif.toArray(new String[_fldif.size()]));
            message.setData(bundle);
            au._mthdo(a).sendMessage(message);
        }

        public d(List list, GeofenceClient.OnRemoveBDGeofencesResultListener onremovebdgeofencesresultlistener)
        {
            a = au.this;
            super();
            _fldif = list;
            _flddo = onremovebdgeofencesresultlistener;
        }
    }


    private static final String h2 = "GeofenceMan";
    private static final int h3 = 3;
    public static final int h4 = 10;
    private static final String h5 = "http://loc.map.baidu.com/fence";
    private static final String h6 = "geofence_id";
    private static final String h7 = ";";
    private static final String h9 = "status_code";
    private static final String i = "GeofenceMan";
    private static au ia;
    private static final int ic = 5;
    private static final int id = 2;
    private static final int ie = 1;
    private static final String ih = "geofence_ids";
    private Context h1;
    private Object h8;
    private HandlerThread ib;
    private a ig;

    au()
    {
        h8 = new Object();
    }

    private void b8()
    {
        ib = new HandlerThread("GeofenceMan", 10);
        ib.start();
        ig = new a(ib.getLooper());
    }

    private void b9()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = m.a(h1).getWritableDatabase();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        ((SQLiteDatabase) (obj)).beginTransaction();
        long l = System.currentTimeMillis();
        ((SQLiteDatabase) (obj)).execSQL(String.format("DELETE FROM %s WHERE EXISTS (SELECT * FROM %s WHERE (%s + %s) < %d)", new Object[] {
            "geofence_detail", "geofence", "valid_date", "duration_millis", Long.valueOf(l)
        }));
        ((SQLiteDatabase) (obj)).execSQL(String.format("DELETE FROM %s WHERE (%s + %s) < %d", new Object[] {
            "geofence", "valid_date", "duration_millis", Long.valueOf(l)
        }));
        ((SQLiteDatabase) (obj)).setTransactionSuccessful();
        ((SQLiteDatabase) (obj)).endTransaction();
        ((SQLiteDatabase) (obj)).close();
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        Object obj1;
        obj1;
        ((SQLiteDatabase) (obj)).endTransaction();
        ((SQLiteDatabase) (obj)).close();
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        throw obj;
        obj1;
        ((SQLiteDatabase) (obj)).endTransaction();
        ((SQLiteDatabase) (obj)).close();
        throw obj1;
    }

    private void ca()
    {
        ig.sendEmptyMessage(3);
    }

    private final void cb()
    {
        if (!s._mthif(h1))
        {
            throw new IllegalStateException("Not net connection");
        } else
        {
            return;
        }
    }

    private long cc()
    {
        this;
        JVM INSTR monitorenter ;
        long l;
        long l1;
        l1 = 0L;
        l = l1;
        SQLiteDatabase sqlitedatabase = m.a(h1).getReadableDatabase();
        l = l1;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        l = l1;
        l1 = DatabaseUtils.queryNumEntries(sqlitedatabase, "geofence");
        l = l1;
        sqlitedatabase.close();
        l = l1;
_L2:
        this;
        JVM INSTR monitorexit ;
        return l;
        Object obj;
        obj;
        throw obj;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static int _mthdo(Context context)
    {
        context = ((TelephonyManager)context.getSystemService("phone")).getSubscriberId();
        if (context != null)
        {
            if (context.startsWith("46000") || context.startsWith("46002") || context.startsWith("46007"))
            {
                return 1;
            }
            if (context.startsWith("46001"))
            {
                return 2;
            }
            if (context.startsWith("46003"))
            {
                return 3;
            }
        }
        return 5;
    }

    private int _mthdo(List list)
    {
        this;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = m.a(h1).getWritableDatabase();
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        sqlitedatabase.beginTransaction();
        list = list.iterator();
_L3:
        if (!list.hasNext()) goto _L2; else goto _L1
_L1:
        String s1;
        String as[];
        s1 = (String)list.next();
        as = new String[1];
        as[0] = s1;
        sqlitedatabase.delete("geofence", String.format("%s=?", new Object[] {
            "geofence_id"
        }), as);
        sqlitedatabase.delete("geofence_detail", String.format("%s=?", new Object[] {
            "geofence_id"
        }), as);
          goto _L3
        list;
        sqlitedatabase.endTransaction();
        int j = 1;
_L4:
        sqlitedatabase.close();
_L5:
        this;
        JVM INSTR monitorexit ;
        return j;
_L2:
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        j = 0;
          goto _L4
        list;
        sqlitedatabase.endTransaction();
        throw list;
        list;
        this;
        JVM INSTR monitorexit ;
        throw list;
        j = 0;
          goto _L5
    }

    static a _mthdo(au au1)
    {
        return au1.ig;
    }

    public static au _mthfor(Context context)
    {
        if (ia == null)
        {
            ia = new au();
            ia.b8();
            ia.h1 = context;
        }
        return ia;
    }

    static void _mthfor(au au1)
    {
        au1.b9();
    }

    private int _mthif(aq aq1, String s1)
    {
        int j = 0;
        boolean flag = false;
        this;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = m.a(h1).getWritableDatabase();
        if (sqlitedatabase == null) goto _L2; else goto _L1
_L1:
        long l1;
        sqlitedatabase.beginTransaction();
        l1 = System.currentTimeMillis();
        String s2;
        ContentValues contentvalues;
        contentvalues = new ContentValues();
        s2 = aq1.getGeofenceId();
        contentvalues.put("geofence_id", s2);
        contentvalues.put("longitude", Double.valueOf(aq1.a()));
        contentvalues.put("latitude", Double.valueOf(aq1._mthcase()));
        contentvalues.put("radius", Float.valueOf(aq1._mthdo()));
        contentvalues.put("radius_type", Integer.valueOf(aq1._mthnew()));
        contentvalues.put("valid_date", Long.valueOf(l1));
        contentvalues.put("duration_millis", Long.valueOf(aq1._mthgoto()));
        contentvalues.put("coord_type", aq1._mthint());
        String as[];
        ContentValues contentvalues1;
        int k;
        int l;
        if (aq1._mthbyte())
        {
            j = 1;
        } else
        {
            j = 0;
        }
        contentvalues.put("is_lac", Integer.valueOf(j));
        if (aq1._mthif())
        {
            j = 1;
        } else
        {
            j = 0;
        }
        contentvalues.put("is_cell", Integer.valueOf(j));
        if (aq1._mthfor())
        {
            j = 1;
        } else
        {
            j = 0;
        }
        contentvalues.put("is_wifi", Integer.valueOf(j));
        contentvalues.put("next_active_time", Integer.valueOf(0));
        contentvalues.put("next_exit_active_time", Integer.valueOf(0));
        sqlitedatabase.insert("geofence", null, contentvalues);
        as = s1.split(";");
        k = as.length;
        j = 0;
_L4:
        if (j >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = as[j];
        contentvalues1 = new ContentValues();
        contentvalues1.put("geofence_id", s2);
        contentvalues1.put("ap_backup", s1);
        l = s1.lastIndexOf("|");
        aq1 = s1;
        if (l == -1)
        {
            break MISSING_BLOCK_LABEL_338;
        }
        aq1 = s1.substring(0, l);
        contentvalues1.put("ap", aq1);
        sqlitedatabase.insert("geofence_detail", null, contentvalues1);
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        j = ((flag) ? 1 : 0);
_L6:
        sqlitedatabase.close();
_L2:
        this;
        JVM INSTR monitorexit ;
        return j;
        aq1;
        sqlitedatabase.endTransaction();
        j = 1;
        if (true) goto _L6; else goto _L5
_L5:
        aq1;
        sqlitedatabase.endTransaction();
        throw aq1;
        aq1;
        this;
        JVM INSTR monitorexit ;
        throw aq1;
    }

    static int _mthif(au au1, aq aq1, String s1)
    {
        return au1._mthif(aq1, s1);
    }

    static int _mthif(au au1, List list)
    {
        return au1._mthdo(list);
    }

    static Context _mthif(au au1)
    {
        return au1.h1;
    }

    private void _mthif(int j, String s1, GeofenceClient.OnAddBDGeofencesResultListener onaddbdgeofencesresultlistener)
    {
        if (j != 1);
        onaddbdgeofencesresultlistener.onAddBDGeofencesResult(j, s1);
    }

    private void _mthif(int j, String as[], GeofenceClient.OnRemoveBDGeofencesResultListener onremovebdgeofencesresultlistener)
    {
        onremovebdgeofencesresultlistener.onRemoveBDGeofencesByRequestIdsResult(j, as);
    }

    private void _mthif(GeofenceClient.OnAddBDGeofencesResultListener onaddbdgeofencesresultlistener, int j, String s1)
    {
        Message message = Message.obtain(ig);
        message.what = 0;
        message.obj = onaddbdgeofencesresultlistener;
        onaddbdgeofencesresultlistener = new Bundle();
        onaddbdgeofencesresultlistener.putInt("status_code", j);
        onaddbdgeofencesresultlistener.putString("geofence_id", s1);
        message.setData(onaddbdgeofencesresultlistener);
        ig.sendMessage(message);
    }

    static void _mthif(au au1, int j, String s1, GeofenceClient.OnAddBDGeofencesResultListener onaddbdgeofencesresultlistener)
    {
        au1._mthif(j, s1, onaddbdgeofencesresultlistener);
    }

    static void _mthif(au au1, int j, String as[], GeofenceClient.OnRemoveBDGeofencesResultListener onremovebdgeofencesresultlistener)
    {
        au1._mthif(j, as, onremovebdgeofencesresultlistener);
    }

    static void _mthif(au au1, GeofenceClient.OnAddBDGeofencesResultListener onaddbdgeofencesresultlistener, int j, String s1)
    {
        au1._mthif(onaddbdgeofencesresultlistener, j, s1);
    }

    public static void _mthint(Context context)
    {
        a0.cq()._mthtry(f.getServiceContext());
    }

    public void b7()
    {
        synchronized (h8)
        {
            ig.post(new _cls3());
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void _mthdo(aq aq1)
    {
        ig.post(new _cls1(aq1));
    }

    public void _mthdo(String s1, boolean flag)
    {
        long l = 0x1b7740L;
        this;
        JVM INSTR monitorenter ;
        boolean flag1 = TextUtils.isEmpty(s1);
        if (!flag1) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        SQLiteDatabase sqlitedatabase = m.a(h1).getWritableDatabase();
        if (sqlitedatabase == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        ContentValues contentvalues = new ContentValues();
        if (!flag) goto _L4; else goto _L3
_L3:
        long l2 = System.currentTimeMillis();
        long l1 = l;
        if (GeofenceClient.d() == 0L)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        l1 = l;
        if (GeofenceClient.d() != 0x1b7740L)
        {
            l1 = GeofenceClient.d();
        }
        contentvalues.put("next_active_time", Long.valueOf(l1 + l2));
_L5:
        sqlitedatabase.update("geofence", contentvalues, "geofence_id= ?", new String[] {
            s1
        });
        sqlitedatabase.close();
        continue; /* Loop/switch isn't completed */
        s1;
        throw s1;
_L4:
        l2 = System.currentTimeMillis();
        l1 = l;
        if (GeofenceClient.d() == 0L)
        {
            break MISSING_BLOCK_LABEL_169;
        }
        l1 = l;
        if (GeofenceClient.d() != 0x1b7740L)
        {
            l1 = GeofenceClient.d();
        }
        contentvalues.put("next_exit_active_time", Long.valueOf(l1 + l2));
          goto _L5
        s1;
        sqlitedatabase.close();
        if (true) goto _L1; else goto _L6
_L6:
        s1;
        sqlitedatabase.close();
        throw s1;
    }

    public void _mthif(aq aq1)
    {
        ig.post(new _cls2(aq1));
    }

    public void _mthif(aq aq1, GeofenceClient.OnAddBDGeofencesResultListener onaddbdgeofencesresultlistener)
    {
        cb();
        an.a(onaddbdgeofencesresultlistener, "OnAddBDGeofenceRecesResultListener not provided.");
        if (cc() >= 10L)
        {
            onaddbdgeofencesresultlistener.onAddBDGeofencesResult(1001, aq1.getGeofenceId());
            return;
        } else
        {
            (new b(aq1, onaddbdgeofencesresultlistener)).ag();
            ca();
            return;
        }
    }

    public void _mthif(List list, GeofenceClient.OnRemoveBDGeofencesResultListener onremovebdgeofencesresultlistener)
    {
        boolean flag;
        if (list != null && list.size() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        an._mthif(flag, "geofenceRequestIds can't be null nor empty.");
        an.a(onremovebdgeofencesresultlistener, "onRemoveBDGeofencesResultListener not provided.");
        ig.post(new d(list, onremovebdgeofencesresultlistener));
    }

    private class _cls3
        implements Runnable
    {

        final au a;

        public void run()
        {
            au._mthfor(a);
        }

        _cls3()
        {
            a = au.this;
            super();
        }
    }


    private class _cls1
        implements Runnable
    {

        final au a;
        final aq _fldif;

        public void run()
        {
            a._mthdo(_fldif.getGeofenceId(), true);
        }

        _cls1(aq aq1)
        {
            a = au.this;
            _fldif = aq1;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        final au a;
        final aq _fldif;

        public void run()
        {
            a._mthdo(_fldif.getGeofenceId(), false);
        }

        _cls2(aq aq1)
        {
            a = au.this;
            _fldif = aq1;
            super();
        }
    }

}
