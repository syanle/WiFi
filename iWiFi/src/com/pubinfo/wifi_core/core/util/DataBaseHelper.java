// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class DataBaseHelper extends SQLiteOpenHelper
{

    static final String DATA_BASE_NAME = "com_pubinfo_wenzt.db";
    static final int DATA_BASE_VERSION = 1;
    Context ctx;
    Cursor cursor;
    SQLiteDatabase db;

    public DataBaseHelper(Context context)
    {
        super(context, "com_pubinfo_wenzt.db", null, 1);
        cursor = null;
        ctx = context;
    }

    private ContentValues makeContentValues(Map map)
    {
        ContentValues contentvalues = new ContentValues();
        Iterator iterator = map.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return contentvalues;
            }
            String s = (String)iterator.next();
            contentvalues.put(s, (String)map.get(s));
        } while (true);
    }

    private ArrayList makeWhere(Map map)
    {
        StringBuffer stringbuffer = new StringBuffer();
        Set set = map.keySet();
        Iterator iterator = set.iterator();
        int k = set.size();
        String as[] = new String[k];
        int i = 0;
        do
        {
            if (!iterator.hasNext())
            {
                map = new ArrayList();
                map.add(stringbuffer.toString());
                map.add(as);
                return map;
            }
            String s = (String)iterator.next();
            stringbuffer.append((new StringBuilder(String.valueOf(s))).append("=?").toString());
            int j = i + 1;
            as[i] = (String)map.get(s);
            if (j < k)
            {
                stringbuffer.append(" and ");
            }
            i = j;
        } while (true);
    }

    private String parserMap(Map map)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("(");
        Object obj = map.keySet();
        if (obj == null || ((Set) (obj)).size() == 0)
        {
            return null;
        }
        obj = ((Set) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                stringbuffer.deleteCharAt(stringbuffer.lastIndexOf(","));
                stringbuffer.append(");");
                return stringbuffer.toString();
            }
            String s = (String)((Iterator) (obj)).next();
            String s1 = (String)map.get(s);
            stringbuffer.append((new StringBuilder(String.valueOf(s))).append("  ").append(s1).append(",").toString());
        } while (true);
    }

    public void close()
    {
        if (cursor != null && !cursor.isClosed())
        {
            cursor.close();
        }
        if (db != null && db.isOpen())
        {
            db.close();
        }
    }

    public void createTable(String s, Map map)
    {
        db = getWritableDatabase();
        s = (new StringBuilder("create table if not exists  ")).append(s).append(parserMap(map)).toString();
        db.execSQL(s);
    }

    public int delete(Map map, String s)
    {
        ArrayList arraylist = makeWhere(map);
        map = (String)arraylist.get(0);
        String as[] = (String[])arraylist.get(1);
        db = getWritableDatabase();
        return db.delete(s, map, as);
    }

    public long insert(Map map, String s)
    {
        db = getWritableDatabase();
        map = makeContentValues(map);
        return db.insert(s, null, map);
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
    }

    public Cursor select(Map map, String s)
    {
        db = getReadableDatabase();
        if (map == null || map.isEmpty())
        {
            cursor = db.query(s, null, null, null, null, null, null);
        } else
        {
            ArrayList arraylist = makeWhere(map);
            map = (String)arraylist.get(0);
            String as[] = (String[])arraylist.get(1);
            cursor = db.query(s, null, map, as, null, null, null);
        }
        return cursor;
    }

    public int update(Map map, Map map1, String s)
    {
        db = getWritableDatabase();
        map1 = makeContentValues(map1);
        ArrayList arraylist = makeWhere(map);
        map = (String)arraylist.get(0);
        String as[] = (String[])arraylist.get(1);
        return db.update(s, map1, map, as);
    }
}
