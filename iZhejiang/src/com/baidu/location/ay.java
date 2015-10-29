// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.location.Location;
import android.net.wifi.ScanResult;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONObject;

// Referenced classes of package com.baidu.location:
//            ax, n, j, c, 
//            ah, t, ar, Jni, 
//            BDLocation, k, ab

class ay
    implements ax, n
{
    private class a extends AsyncTask
    {

        final ay a;

        protected transient Boolean a(Boolean aboolean[])
        {
            SQLiteDatabase sqlitedatabase;
            sqlitedatabase = null;
            if (aboolean.length != 4)
            {
                return Boolean.valueOf(false);
            }
            Object obj = SQLiteDatabase.openOrCreateDatabase(ay._mthif(a), null);
            sqlitedatabase = ((SQLiteDatabase) (obj));
_L2:
            int i;
            if (sqlitedatabase == null)
            {
                return Boolean.valueOf(false);
            }
            i = (int)(System.currentTimeMillis() >> 28);
            sqlitedatabase.beginTransaction();
            if (!aboolean[0].booleanValue())
            {
                break MISSING_BLOCK_LABEL_87;
            }
            obj = (new StringBuilder()).append("delete from wof where ac < ").append(i - 35).toString();
            try
            {
                sqlitedatabase.execSQL(((String) (obj)));
            }
            catch (Exception exception) { }
            if (!aboolean[1].booleanValue())
            {
                break MISSING_BLOCK_LABEL_126;
            }
            aboolean = (new StringBuilder()).append("delete from bdcltb09 where ac is NULL or ac < ").append(i - 130).toString();
            try
            {
                sqlitedatabase.execSQL(aboolean);
            }
            // Misplaced declaration of an exception variable
            catch (Boolean aboolean[]) { }
            try
            {
                sqlitedatabase.setTransactionSuccessful();
                sqlitedatabase.endTransaction();
                sqlitedatabase.close();
            }
            // Misplaced declaration of an exception variable
            catch (Boolean aboolean[]) { }
            return Boolean.valueOf(true);
            Exception exception1;
            exception1;
            if (true) goto _L2; else goto _L1
_L1:
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return a((Boolean[])aobj);
        }

        private a()
        {
            a = ay.this;
            super();
        }

        a(_cls1 _pcls1)
        {
            this();
        }
    }

    private class b extends AsyncTask
    {

        final ay a;

        protected transient Boolean a(Object aobj[])
        {
            if (aobj.length != 4)
            {
                ay._mthif(a, false);
                return Boolean.valueOf(false);
            }
            Object obj;
            try
            {
                obj = SQLiteDatabase.openOrCreateDatabase(ay._mthif(a), null);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                obj = null;
            }
            if (obj == null)
            {
                ay._mthif(a, false);
                return Boolean.valueOf(false);
            }
            try
            {
                ((SQLiteDatabase) (obj)).beginTransaction();
                ay._mthif(a, (String)aobj[0], (t.a)aobj[1], ((SQLiteDatabase) (obj)));
                ay._mthif(a, (ar.b)aobj[2], (BDLocation)aobj[3], ((SQLiteDatabase) (obj)));
                ((SQLiteDatabase) (obj)).setTransactionSuccessful();
                ((SQLiteDatabase) (obj)).endTransaction();
                ((SQLiteDatabase) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object aobj[]) { }
            ay._mthif(a, false);
            return Boolean.valueOf(true);
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return a(aobj);
        }

        private b()
        {
            a = ay.this;
            super();
        }

        b(_cls1 _pcls1)
        {
            this();
        }
    }


    private static ay im = null;
    private volatile boolean iA;
    private final String iB;
    private int iC;
    private final String iD = "wof";
    private boolean iE;
    private final int iF = 10000;
    private String iG;
    private boolean in;
    private String io;
    private long ip;
    private final int iq = 6;
    private double ir;
    private double is;
    private final String it = "bdcltb09";
    private double iu;
    private double iv;
    private boolean iw;
    private boolean ix;
    private boolean iy;
    private double iz;

    private ay()
    {
        iG = null;
        iy = false;
        iE = false;
        in = false;
        io = null;
        iC = 0;
        iv = 0.0D;
        iu = 0.0D;
        iz = 0.0D;
        is = 0.0D;
        ir = 0.0D;
        ip = 0L;
        iw = false;
        iA = false;
        iB = (new StringBuilder()).append(I).append("/ls.db").toString();
        ix = true;
        try
        {
            cg();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private String _mthbyte(boolean flag)
    {
        double d1 = 0.0D;
        double d;
        double d2;
        boolean flag1;
        boolean flag2;
        if (iE)
        {
            d = is;
            d1 = ir;
            d2 = 246.40000000000001D;
            flag2 = true;
            flag1 = true;
        } else
        if (iy)
        {
            d = iv;
            d1 = iu;
            d2 = iz;
            flag2 = ah.ay().aA();
            flag1 = true;
        } else
        {
            d2 = 0.0D;
            d = 0.0D;
            flag2 = false;
            flag1 = false;
        }
        com.baidu.location.j.cZ()._mthif(iy, iE, d, d1);
        if (flag1)
        {
            if (flag)
            {
                String s = (new StringBuilder()).append("{\"result\":{\"time\":\"").append(c._mthnew()).append("\",\"error\":\"66\"},\"content\":{\"point\":{\"x\":").append("\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}").toString();
                return String.format(Locale.CHINA, s, new Object[] {
                    Double.valueOf(d), Double.valueOf(d1), Double.valueOf(d2), Boolean.valueOf(true)
                });
            } else
            {
                String s1 = (new StringBuilder()).append("{\"result\":{\"time\":\"").append(c._mthnew()).append("\",\"error\":\"68\"},\"content\":{\"point\":{\"x\":").append("\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}").toString();
                return String.format(Locale.CHINA, s1, new Object[] {
                    Double.valueOf(d), Double.valueOf(d1), Double.valueOf(d2), Boolean.valueOf(flag2)
                });
            }
        }
        if (flag)
        {
            return (new StringBuilder()).append("{\"result\":{\"time\":\"").append(c._mthnew()).append("\",\"error\":\"67\"}}").toString();
        } else
        {
            return (new StringBuilder()).append("{\"result\":{\"time\":\"").append(c._mthnew()).append("\",\"error\":\"63\"}}").toString();
        }
    }

    public static ay cd()
    {
        if (im == null)
        {
            im = new ay();
        }
        return im;
    }

    private void ce()
    {
        Object obj;
        try
        {
            obj = SQLiteDatabase.openOrCreateDatabase(iB, null);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = null;
        }
        if (obj == null)
        {
            return;
        }
        long l = DatabaseUtils.queryNumEntries(((SQLiteDatabase) (obj)), "wof");
        long l1 = DatabaseUtils.queryNumEntries(((SQLiteDatabase) (obj)), "bdcltb09");
        boolean flag;
        boolean flag1;
        if (l > 10000L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (l1 > 10000L)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag || flag1)
        {
            (new a(null)).execute(new Boolean[] {
                Boolean.valueOf(flag), Boolean.valueOf(flag1)
            });
        }
        ((SQLiteDatabase) (obj)).close();
    }

    private void cf()
    {
        t.a a1 = t.an().ak();
        if (a1 != null)
        {
            r(a1.a());
        }
        _mthfor(ar.bW().bS());
    }

    private void cg()
    {
        try
        {
            File file = new File(I);
            File file1 = new File(iB);
            if (!file.exists())
            {
                file.mkdirs();
            }
            if (!file1.exists())
            {
                file1.createNewFile();
            }
            if (file1.exists())
            {
                SQLiteDatabase sqlitedatabase = SQLiteDatabase.openOrCreateDatabase(file1, null);
                sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS bdcltb09(id CHAR(40) PRIMARY KEY,time DOUBLE,tag DOUBLE, type DOUBLE , ac INT);");
                sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS wof(id CHAR(15) PRIMARY KEY,mktime DOUBLE,time DOUBLE, ac INT, bc INT, cc INT);");
                sqlitedatabase.setVersion(1);
                sqlitedatabase.close();
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    static void _mthdo(ay ay1)
    {
        ay1.ce();
    }

    private void _mthfor(ar.b b1)
    {
        System.currentTimeMillis();
        iE = false;
        if (b1._fldfor != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        double d;
        double d1;
        double d2;
        double d3;
        Object obj;
        Object obj1;
        Iterator iterator;
        int i;
        int l;
        boolean flag;
        int i1;
        int j1;
        try
        {
            obj = SQLiteDatabase.openOrCreateDatabase(iB, null);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = null;
        }
        if (obj == null || b1 == null) goto _L1; else goto _L3
_L3:
        iterator = b1._fldfor.iterator();
        l = 0;
        b1 = null;
        flag = false;
        i = 0;
        d1 = 0.0D;
        d = 0.0D;
        i1 = 0;
_L13:
        j1 = i;
        d2 = d1;
        d3 = d;
        if (!iterator.hasNext()) goto _L5; else goto _L4
_L4:
        obj1 = (ScanResult)iterator.next();
        i1++;
        if (i1 <= 10) goto _L7; else goto _L6
_L6:
        d3 = d;
        d2 = d1;
        j1 = i;
_L5:
        if (j1 > 0)
        {
            iE = true;
            is = d3 / (double)j1;
            ir = d2 / (double)j1;
        }
        ((SQLiteDatabase) (obj)).close();
        return;
_L7:
        boolean flag1;
        obj1 = Jni.j(((ScanResult) (obj1)).BSSID.replace(":", ""));
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        float af[] = ((SQLiteDatabase) (obj)).rawQuery((new StringBuilder()).append("select * from wof where id = \"").append(((String) (obj1))).append("\";").toString(), null);
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        if (!af.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_897;
        }
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        double d4 = af.getDouble(1) - 113.2349D;
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        double d5 = af.getDouble(2) - 432.12380000000002D;
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        af.getInt(3);
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        int k1 = af.getInt(4);
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        int i2 = af.getInt(5);
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        af.close();
        if (i2 > 8 && i2 > k1)
        {
            continue; /* Loop/switch isn't completed */
        }
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        if (!iy)
        {
            break MISSING_BLOCK_LABEL_541;
        }
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        af = new float[1];
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        Location.distanceBetween(d5, d4, iu, iv, af);
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        if ((double)af[0] > iz + 2000D)
        {
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_925;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_615;
        }
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        af = new float[1];
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        Location.distanceBetween(d5, d4, d1 / (double)i, d / (double)i, af);
        if (af[0] > 1000F)
        {
            continue; /* Loop/switch isn't completed */
        }
        break; /* Loop/switch isn't completed */
        if (b1 != null)
        {
            break MISSING_BLOCK_LABEL_998;
        }
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        af = new double[8];
        j1 = l + 1;
        af[l] = d4;
        af[j1] = d5;
        l = j1 + 1;
        b1 = af;
        d2 = d;
        d = d1;
        d1 = d2;
        break MISSING_BLOCK_LABEL_950;
_L8:
        f = af[0];
        if (f < 1000F)
        {
            flag = true;
            d2 = b1[l1];
            d1 += b1[l1 + 1];
            i++;
            d += d2;
        }
        l1 += 2;
        float f;
        int l1;
        for (; l1 >= l; l1 = 0)
        {
            break MISSING_BLOCK_LABEL_798;
        }

        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        af = new float[1];
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        Location.distanceBetween(d5, d4, b1[l1 + 1], b1[l1], af);
          goto _L8
        if (flag)
        {
            i++;
            d1 += d5;
            d2 = d + d4;
            d = d1;
            d1 = d2;
        } else
        if (l < 8)
        {
            j1 = l + 1;
            b1[l] = d4;
            b1[j1] = d5;
            l = j1 + 1;
            d2 = d;
            d = d1;
            d1 = d2;
        } else
        {
            flag1 = flag;
            j1 = i;
            d3 = d1;
            d2 = d;
            try
            {
                ((SQLiteDatabase) (obj)).close();
                return;
            }
            catch (Exception exception)
            {
                i = l;
            }
            break MISSING_BLOCK_LABEL_1010;
        }
        break MISSING_BLOCK_LABEL_950;
        flag1 = flag;
        j1 = i;
        d3 = d1;
        d2 = d;
        af.close();
        continue; /* Loop/switch isn't completed */
        flag = true;
        i++;
        d2 = d1 + d5;
        d1 = d + d4;
        d = d2;
_L10:
        j1 = l;
        l = i;
        d3 = d;
        d2 = d1;
        if (i <= 4)
        {
            break MISSING_BLOCK_LABEL_1022;
        }
        j1 = i;
        d2 = d;
        d3 = d1;
        if (true) goto _L5; else goto _L9
_L9:
        d2 = d;
        d = d1;
        d1 = d2;
          goto _L10
        if (true) goto _L5; else goto _L11
_L11:
        flag = flag1;
        l = j1;
        j1 = i;
        i = l;
        d1 = d3;
        d = d2;
        l = j1;
        if (true) goto _L13; else goto _L12
_L12:
    }

    static String _mthif(ay ay1)
    {
        return ay1.iB;
    }

    private void _mthif(ar.b b1, BDLocation bdlocation, SQLiteDatabase sqlitedatabase)
    {
_L2:
        return;
        if (bdlocation == null || bdlocation.getLocType() != 161 || !"wf".equals(bdlocation.getNetworkLocationType()) && bdlocation.getRadius() >= 300F || b1._fldfor == null) goto _L2; else goto _L1
_L1:
        int i;
        int k1;
        k1 = (int)(System.currentTimeMillis() >> 28);
        System.currentTimeMillis();
        b1 = b1._fldfor.iterator();
        i = 0;
_L5:
        if (!b1.hasNext()) goto _L2; else goto _L3
_L3:
        Object obj = (ScanResult)b1.next();
        if (((ScanResult) (obj)).level == 0) goto _L5; else goto _L4
_L4:
        i++;
        if (i > 6) goto _L2; else goto _L6
_L6:
        ContentValues contentvalues;
        contentvalues = new ContentValues();
        obj = Jni.j(((ScanResult) (obj)).BSSID.replace(":", ""));
        Cursor cursor = sqlitedatabase.rawQuery((new StringBuilder()).append("select * from wof where id = \"").append(((String) (obj))).append("\";").toString(), null);
        if (cursor == null) goto _L8; else goto _L7
_L7:
        if (!cursor.moveToFirst()) goto _L8; else goto _L9
_L9:
        double d;
        double d1;
        int l;
        int j1;
        d1 = cursor.getDouble(1);
        d = cursor.getDouble(2);
        cursor.getInt(3);
        l = cursor.getInt(4);
        j1 = cursor.getInt(5);
        int i1;
        d -= 432.12380000000002D;
        i1 = 1;
        d1 -= 113.2349D;
_L18:
        cursor.close();
        if (i1 != 0) goto _L11; else goto _L10
_L10:
        float af[];
        try
        {
            contentvalues.put("mktime", Double.valueOf(bdlocation.getLongitude() + 113.2349D));
            contentvalues.put("time", Double.valueOf(bdlocation.getLatitude() + 432.12380000000002D));
            contentvalues.put("bc", Integer.valueOf(1));
            contentvalues.put("cc", Integer.valueOf(1));
            contentvalues.put("ac", Integer.valueOf(k1));
            contentvalues.put("id", ((String) (obj)));
            sqlitedatabase.insert("wof", null, contentvalues);
        }
        catch (Exception exception1) { }
          goto _L5
        af = new float[1];
        Location.distanceBetween(d, d1, bdlocation.getLatitude(), bdlocation.getLongitude(), af);
        if (af[0] <= 1500F) goto _L13; else goto _L12
_L12:
        i1 = j1 + 1;
        if (i1 <= 10 || i1 <= l * 3) goto _L15; else goto _L14
_L14:
        contentvalues.put("mktime", Double.valueOf(bdlocation.getLongitude() + 113.2349D));
        contentvalues.put("time", Double.valueOf(bdlocation.getLatitude() + 432.12380000000002D));
        contentvalues.put("bc", Integer.valueOf(1));
        contentvalues.put("cc", Integer.valueOf(1));
        contentvalues.put("ac", Integer.valueOf(k1));
_L17:
        try
        {
            l = sqlitedatabase.update("wof", contentvalues, (new StringBuilder()).append("id = \"").append(((String) (obj))).append("\"").toString(), null);
        }
        catch (Exception exception)
        {
            break; /* Loop/switch isn't completed */
        }
        if (l > 0);
        break; /* Loop/switch isn't completed */
_L15:
        contentvalues.put("cc", Integer.valueOf(i1));
        continue; /* Loop/switch isn't completed */
_L13:
        d1 = (d1 * (double)l + bdlocation.getLongitude()) / (double)(l + 1);
        d = (d * (double)l + bdlocation.getLatitude()) / (double)(l + 1);
        contentvalues.put("mktime", Double.valueOf(d1 + 113.2349D));
        contentvalues.put("time", Double.valueOf(d + 432.12380000000002D));
        contentvalues.put("bc", Integer.valueOf(l + 1));
        contentvalues.put("ac", Integer.valueOf(k1));
        if (true) goto _L17; else goto _L16
_L16:
_L8:
        j1 = 0;
        l = 0;
        d1 = 0.0D;
        i1 = 0;
        d = 0.0D;
          goto _L18
_L11:
        if (j1 != 0) goto _L19; else goto _L5
_L19:
        break MISSING_BLOCK_LABEL_368;
    }

    static void _mthif(ay ay1, ar.b b1, BDLocation bdlocation, SQLiteDatabase sqlitedatabase)
    {
        ay1._mthif(b1, bdlocation, sqlitedatabase);
    }

    static void _mthif(ay ay1, String s, t.a a1, SQLiteDatabase sqlitedatabase)
    {
        ay1._mthif(s, a1, sqlitedatabase);
    }

    private void _mthif(String s, t.a a1, SQLiteDatabase sqlitedatabase)
    {
        if (a1._mthfor() && ah.ay().aA()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        System.currentTimeMillis();
        double d1 = 0.0D;
        double d = 0.0D;
        float f = 0.0F;
        int i = (int)(System.currentTimeMillis() >> 28);
        a1 = a1.a();
        boolean flag = true;
        Object obj;
        int l;
        try
        {
            s = new JSONObject(s);
            l = Integer.parseInt(s.getJSONObject("result").getString("error"));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        if (l != 161) goto _L4; else goto _L3
_L3:
        s = s.getJSONObject("content");
        if (!s.has("clf")) goto _L6; else goto _L5
_L5:
        flag = false;
        obj = s.getString("clf");
        if (!((String) (obj)).equals("0")) goto _L8; else goto _L7
_L7:
        obj = s.getJSONObject("point");
        d1 = Double.parseDouble(((JSONObject) (obj)).getString("x"));
        d = Double.parseDouble(((JSONObject) (obj)).getString("y"));
        f = Float.parseFloat(s.getString("radius"));
_L6:
        if (flag) goto _L1; else goto _L9
_L9:
        s = new ContentValues();
        s.put("time", Double.valueOf(d1 + 1235.4322999999999D));
        s.put("tag", Float.valueOf(4326F + f));
        s.put("type", Double.valueOf(d + 2367.3217D));
        s.put("ac", Integer.valueOf(i));
        if (sqlitedatabase.update("bdcltb09", s, (new StringBuilder()).append("id = \"").append(a1).append("\"").toString(), null) > 0) goto _L1; else goto _L10
_L10:
        s.put("id", a1);
        sqlitedatabase.insert("bdcltb09", null, s);
        return;
        s;
        return;
_L8:
        s = ((String) (obj)).split("\\|");
        d1 = Double.parseDouble(s[0]);
        d = Double.parseDouble(s[1]);
        f = Float.parseFloat(s[2]);
          goto _L6
_L4:
        if (l != 167) goto _L6; else goto _L11
_L11:
        sqlitedatabase.delete("bdcltb09", (new StringBuilder()).append("id = \"").append(a1).append("\"").toString(), null);
        return;
    }

    static boolean _mthif(ay ay1, boolean flag)
    {
        ay1.iA = flag;
        return flag;
    }

    private void k(Message message)
    {
        com.baidu.location.k.p()._mthif(_mthcase(true), message);
    }

    private void r(String s)
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = null;
        if (s == null || s.equals(iG))
        {
            return;
        }
        Object obj = SQLiteDatabase.openOrCreateDatabase(iB, null);
        sqlitedatabase = ((SQLiteDatabase) (obj));
_L2:
        if (sqlitedatabase == null || s == null)
        {
            iy = false;
            return;
        }
        iy = false;
        obj = sqlitedatabase.rawQuery((new StringBuilder()).append("select * from bdcltb09 where id = \"").append(s).append("\";").toString(), null);
        iG = s;
        ip = System.currentTimeMillis();
        if (obj != null)
        {
            try
            {
                if (((Cursor) (obj)).moveToFirst())
                {
                    iv = ((Cursor) (obj)).getDouble(1) - 1235.4322999999999D;
                    iz = ((Cursor) (obj)).getDouble(2) - 4326D;
                    iu = ((Cursor) (obj)).getDouble(3) - 2367.3217D;
                    iy = true;
                }
                ((Cursor) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        sqlitedatabase.close();
        return;
        Exception exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public BDLocation _mthcase(boolean flag)
    {
        cf();
        return new BDLocation(_mthbyte(flag));
    }

    public void ch()
    {
    }

    public void ci()
    {
        ix = true;
        ab.bj().postDelayed(new _cls1(), 3000L);
    }

    public void _mthif(String s, t.a a1, ar.b b1, BDLocation bdlocation)
    {
        boolean flag;
        boolean flag1;
        if (!a1._mthfor() || !ah.ay().aA())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (bdlocation == null || bdlocation.getLocType() != 161 || !"wf".equals(bdlocation.getNetworkLocationType()) && bdlocation.getRadius() >= 300F)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (b1._fldfor == null)
        {
            flag = true;
        }
        while (flag1 && flag || iA) 
        {
            return;
        }
        iA = true;
        (new b(null)).execute(new Object[] {
            s, a1, b1, bdlocation
        });
    }

    public void j(Message message)
    {
        k(message);
    }


    private class _cls1
        implements Runnable
    {

        final ay a;

        public void run()
        {
            if (ab.gv)
            {
                ay._mthdo(a);
            }
        }

        _cls1()
        {
            a = ay.this;
            super();
        }
    }

}
