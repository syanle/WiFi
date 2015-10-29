// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open.cgireport;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.tencent.open.cgireport:
//            b, a, c

public class e
{

    private Context a;
    private SQLiteDatabase b;
    private b c;
    private int d;

    public e(Context context)
    {
        a = context;
        c = new b(this, context, "sdk_cgi_report.db", null, 2);
        d = c().size();
    }

    public int a(ArrayList arraylist)
    {
        this;
        JVM INSTR monitorenter ;
        Log.i("cgi_report_debug", (new StringBuilder()).append("ReportDataModal backupOldItems count = ").append(arraylist.size()).toString());
        arraylist = arraylist.iterator();
        int i = 0;
_L1:
        ContentValues contentvalues;
        if (!arraylist.hasNext())
        {
            break MISSING_BLOCK_LABEL_207;
        }
        a a1 = (a)arraylist.next();
        contentvalues = new ContentValues();
        contentvalues.put("apn", a1.a());
        contentvalues.put("frequency", a1.b());
        contentvalues.put("commandid", a1.c());
        contentvalues.put("resultcode", a1.d());
        contentvalues.put("tmcost", a1.e());
        contentvalues.put("reqsize", a1.f());
        contentvalues.put("rspsize", a1.g());
        contentvalues.put("deviceinfo", a1.i());
        contentvalues.put("detail", a1.h());
        b = c.getWritableDatabase();
        b.insertOrThrow("olddata", null, contentvalues);
        b.close();
_L2:
        i++;
          goto _L1
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L2
        arraylist;
        throw arraylist;
        Log.i("cgi_report_debug", (new StringBuilder()).append("ReportDataModal backupOldItems succ_count = ").append(i).toString());
        this;
        JVM INSTR monitorexit ;
        return i;
    }

    public boolean a()
    {
        boolean flag = false;
        this;
        JVM INSTR monitorenter ;
        Log.i("cgi_report_debug", "ReportDataModal deleteOldItems start");
        b = c.getWritableDatabase();
        b.execSQL("delete from olddata;");
        b.close();
        Log.i("cgi_report_debug", "ReportDataModal deleteOldItems success");
        flag = true;
_L1:
        this;
        JVM INSTR monitorexit ;
        return flag;
        Object obj;
        obj;
        ((Exception) (obj)).printStackTrace();
          goto _L1
        obj;
        throw obj;
        obj;
        ((Exception) (obj)).printStackTrace();
        b.close();
          goto _L1
    }

    public boolean a(String s, String s1, String s2, int i, long l, long l1, long l2, String s3)
    {
        this;
        JVM INSTR monitorenter ;
        String s4 = s2;
        if (s2.contains("?"))
        {
            s4 = s2.split("\\?")[0];
        }
        Log.i("cgi_report_debug", (new StringBuilder()).append("ReportDataModal addNewItem apn=").append(s).append(",frequency=").append(s1).append(",commandid=").append(s4).append(",resultCode=").append(i).append(",costTime=").append(l).append(",reqSzie=").append(l1).append(",rspSize=").append(l2).toString());
        s2 = new ContentValues();
        s2.put("apn", (new StringBuilder()).append(s).append("").toString());
        s2.put("frequency", (new StringBuilder()).append(s1).append("").toString());
        s2.put("commandid", (new StringBuilder()).append(s4).append("").toString());
        s2.put("resultcode", (new StringBuilder()).append(i).append("").toString());
        s2.put("tmcost", (new StringBuilder()).append(l).append("").toString());
        s2.put("reqsize", (new StringBuilder()).append(l1).append("").toString());
        s2.put("rspsize", (new StringBuilder()).append(l2).append("").toString());
        s1 = new StringBuilder();
        s1.append("network=").append(s).append('&');
        s = s1.append("sdcard=");
        boolean flag;
        if (Environment.getExternalStorageState().equals("mounted"))
        {
            i = 1;
        } else
        {
            i = 0;
        }
        s.append(i).append('&');
        s1.append("wifi=").append(com.tencent.open.cgireport.c.c(a));
        s2.put("deviceinfo", s1.toString());
        s2.put("detail", s3);
        b = c.getWritableDatabase();
        b.insertOrThrow("newdata", null, s2);
        b.close();
        Log.i("cgi_report_debug", "ReportDataModal addNewItem success");
        d = d + 1;
        flag = true;
_L2:
        this;
        JVM INSTR monitorexit ;
        return flag;
        s;
        Log.e("cgi_report_debug", "ReportDataModal addNewItem failed");
        s.printStackTrace();
        flag = false;
        if (true) goto _L2; else goto _L1
_L1:
        s;
        throw s;
    }

    public boolean b()
    {
        boolean flag = false;
        this;
        JVM INSTR monitorenter ;
        Log.i("cgi_report_debug", "ReportDataModal deleteNewItems start");
        b = c.getWritableDatabase();
        b.execSQL("delete from newdata;");
        d = 0;
        b.close();
        Log.i("cgi_report_debug", "ReportDataModal deleteNewItems start");
        flag = true;
_L1:
        this;
        JVM INSTR monitorexit ;
        return flag;
        Object obj;
        obj;
        ((Exception) (obj)).printStackTrace();
          goto _L1
        obj;
        throw obj;
        obj;
        ((Exception) (obj)).printStackTrace();
        b.close();
          goto _L1
    }

    public ArrayList c()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        Log.i("cgi_report_debug", "ReportDataModal getNewItems start");
        obj = new ArrayList();
        b = c.getReadableDatabase();
        Object obj1;
        obj1 = b.rawQuery("select * from newdata", new String[0]);
        ((Cursor) (obj1)).moveToFirst();
        for (; !((Cursor) (obj1)).isAfterLast(); ((Cursor) (obj1)).moveToNext())
        {
            String s = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("apn"));
            String s1 = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("frequency"));
            String s2 = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("commandid"));
            String s3 = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("resultcode"));
            String s4 = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("tmcost"));
            String s5 = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("reqsize"));
            String s6 = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("rspsize"));
            String s7 = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("detail"));
            ((ArrayList) (obj)).add(new a(s, s1, s2, s3, s4, s5, s6, ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("deviceinfo")), s7));
        }

        break MISSING_BLOCK_LABEL_251;
        obj;
        throw obj;
        obj1;
        ((Exception) (obj1)).printStackTrace();
_L1:
        this;
        JVM INSTR monitorexit ;
        return ((ArrayList) (obj));
        ((Cursor) (obj1)).close();
        b.close();
        Log.i("cgi_report_debug", (new StringBuilder()).append("ReportDataModal getNewItems success, count = ").append(((ArrayList) (obj)).size()).toString());
          goto _L1
    }

    public ArrayList d()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        Log.i("cgi_report_debug", "ReportDataModal getOldItems start");
        obj = new ArrayList();
        b = c.getReadableDatabase();
        Object obj1;
        obj1 = b.rawQuery("select * from olddata", new String[0]);
        ((Cursor) (obj1)).moveToFirst();
        for (; !((Cursor) (obj1)).isAfterLast(); ((Cursor) (obj1)).moveToNext())
        {
            String s = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("apn"));
            String s1 = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("frequency"));
            String s2 = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("commandid"));
            String s3 = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("resultcode"));
            String s4 = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("tmcost"));
            String s5 = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("reqsize"));
            String s6 = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("rspsize"));
            String s7 = ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("detail"));
            ((ArrayList) (obj)).add(new a(s, s1, s2, s3, s4, s5, s6, ((Cursor) (obj1)).getString(((Cursor) (obj1)).getColumnIndex("deviceinfo")), s7));
        }

        break MISSING_BLOCK_LABEL_253;
        obj;
        throw obj;
        obj1;
        ((Exception) (obj1)).printStackTrace();
_L1:
        this;
        JVM INSTR monitorexit ;
        return ((ArrayList) (obj));
        ((Cursor) (obj1)).close();
        b.close();
        Log.i("cgi_report_debug", (new StringBuilder()).append("ReportDataModal getOldItems success, count = ").append(((ArrayList) (obj)).size()).toString());
          goto _L1
    }

    public int e()
    {
        Log.i("cgi_report_debug", (new StringBuilder()).append("ReportDataModal getTotalCount count = ").append(d).toString());
        return d;
    }
}
