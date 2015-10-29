// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.database;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.pubinfo.wifi_core.core.data.ComData;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.pubinfo.wifi_core.core.database:
//            WifiInfoData

public class Database
{

    private static final String COLUMN_ACCOUNT = "account";
    private static final String COLUMN_DEVTYPE = "devtype";
    private static final String COLUMN_ID = "id";
    private static final String COLUMN_KEY = "key";
    private static final String COLUMN_MAC = "mac";
    private static final String COLUMN_PASSWORD = "password";
    private static final String COLUMN_PHONE = "phone";
    private static final String COLUMN_TYPE = "type";
    private static final String CREATE_USER_TABLE = "create table if not exists userTable (type TEXT,phone TEXT,key TEXT,mac TEXT,devtype TEXT,id TEXT,account TEXT,password TEXT)";
    public static final String TABLE_USER = "userTable";
    private static final int USER_ACCOUNT = 6;
    private static final int USER_DEVTYPE = 4;
    private static final int USER_ID = 5;
    private static final int USER_KEY = 2;
    private static final int USER_MAC = 3;
    private static final int USER_PASSWORD = 7;
    private static final int USER_PHONE = 1;
    private static final int USER_TYPE = 0;
    private static String dataBaseName = "FreeWifi";
    private static Database instance = null;
    private static Context mContext;
    private SQLiteDatabase db;

    private Database(Context context)
    {
        db = context.openOrCreateDatabase(dataBaseName, 0, null);
        onCreate();
    }

    public static Database getInstance(Context context)
    {
        com/pubinfo/wifi_core/core/database/Database;
        JVM INSTR monitorenter ;
        mContext = context;
        if (instance == null)
        {
            instance = new Database(context);
        }
        context = instance;
        com/pubinfo/wifi_core/core/database/Database;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    public void deleteUser()
    {
        db.execSQL("DELETE FROM userTable");
    }

    public void insertUser(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7)
    {
        deleteUser();
        try
        {
            db.execSQL("REPLACE INTO userTable (type,phone,key,mac,devtype,id,account,password)VALUES(?, ?, ?, ?, ?, ?, ?, ?)", new Object[] {
                s, s1, s2, s3, s4, s5, s6, s7
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public void onClose()
    {
        db.close();
    }

    public void onCreate()
    {
        db.execSQL("create table if not exists userTable (type TEXT,phone TEXT,key TEXT,mac TEXT,devtype TEXT,id TEXT,account TEXT,password TEXT)");
    }

    public void selectUserRow()
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = db.rawQuery("SELECT * FROM userTable", null);
        int j = cursor.getCount();
        if (j == 0)
        {
            cursor.close();
            return;
        }
        cursor.moveToFirst();
        WifiInfoData wifiinfodata = new WifiInfoData();
        int i = 0;
        do
        {
            if (i >= j)
            {
                ComData.getInstance().setWifiInfoData(arraylist);
                cursor.close();
                return;
            }
            wifiinfodata.setType(cursor.getString(0));
            wifiinfodata.setPhone(cursor.getString(1));
            wifiinfodata.setKey(cursor.getString(2));
            wifiinfodata.setDevtype(cursor.getString(4));
            wifiinfodata.setId(cursor.getString(5));
            wifiinfodata.setMac(cursor.getString(3));
            wifiinfodata.setAccount(cursor.getString(6));
            wifiinfodata.setPassword(cursor.getString(7));
            arraylist.add(wifiinfodata);
            cursor.moveToNext();
            i++;
        } while (true);
    }

}
