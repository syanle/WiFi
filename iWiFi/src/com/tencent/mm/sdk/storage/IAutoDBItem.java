// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import com.tencent.mm.sdk.platformtools.Log;
import com.tencent.mm.sdk.platformtools.Util;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.sdk.storage:
//            MDBItem, CursorFieldHelper, MAutoDBFieldAnnotation

public abstract class IAutoDBItem
    implements MDBItem
{
    public static class MAutoDBInfo
    {

        public Map colsMap;
        public String columns[];
        public Field fields[];
        public String primaryKey;
        public String sql;

        public MAutoDBInfo()
        {
            colsMap = new HashMap();
        }
    }


    public static final String COL_ROWID = "rowid";
    public static final String FIELD_PREFIX = "field_";
    public static final String SYSTEM_ROWID_FIELD = "rowid";
    public long systemRowid;

    public IAutoDBItem()
    {
        systemRowid = -1L;
    }

    private static String[] a(Field afield[])
    {
        String as[] = new String[afield.length + 1];
        int i = 0;
        while (i < afield.length) 
        {
            as[i] = getColName(afield[i]);
            String s = (new StringBuilder("getFullColumns failed:")).append(afield[i].getName()).toString();
            boolean flag;
            if (!Util.isNullOrNil(as[i]))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(s, flag);
            i++;
        }
        as[afield.length] = "rowid";
        return as;
    }

    private static Map b(Field afield[])
    {
        HashMap hashmap = new HashMap();
        int i = 0;
        while (i < afield.length) 
        {
            Object obj = afield[i];
            String s = CursorFieldHelper.type(((Field) (obj)).getType());
            if (s == null)
            {
                Log.e("MicroMsg.SDK.IAutoDBItem", (new StringBuilder("failed identify on column: ")).append(((Field) (obj)).getName()).append(", skipped").toString());
            } else
            {
                obj = getColName(((Field) (obj)));
                if (!Util.isNullOrNil(((String) (obj))))
                {
                    hashmap.put(obj, s);
                }
            }
            i++;
        }
        return hashmap;
    }

    private static String c(Field afield[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        while (i < afield.length) 
        {
            Field field = afield[i];
            Object obj = CursorFieldHelper.type(field.getType());
            if (obj == null)
            {
                Log.e("MicroMsg.SDK.IAutoDBItem", (new StringBuilder("failed identify on column: ")).append(field.getName()).append(", skipped").toString());
            } else
            {
                String s1 = getColName(field);
                if (!Util.isNullOrNil(s1))
                {
                    String s;
                    int j;
                    if (field.isAnnotationPresent(com/tencent/mm/sdk/storage/MAutoDBFieldAnnotation))
                    {
                        s = (new StringBuilder(" default '")).append(((MAutoDBFieldAnnotation)field.getAnnotation(com/tencent/mm/sdk/storage/MAutoDBFieldAnnotation)).defValue()).append("' ").toString();
                        j = ((MAutoDBFieldAnnotation)field.getAnnotation(com/tencent/mm/sdk/storage/MAutoDBFieldAnnotation)).primaryKey();
                    } else
                    {
                        s = "";
                        j = 0;
                    }
                    obj = (new StringBuilder()).append(s1).append(" ").append(((String) (obj))).append(s);
                    if (j == 1)
                    {
                        s = " PRIMARY KEY ";
                    } else
                    {
                        s = "";
                    }
                    stringbuilder.append(((StringBuilder) (obj)).append(s).toString());
                    if (i == afield.length - 1)
                    {
                        s = "";
                    } else
                    {
                        s = ", ";
                    }
                    stringbuilder.append(s);
                }
            }
            i++;
        }
        return stringbuilder.toString();
    }

    public static boolean checkIOEqual(ContentValues contentvalues, Cursor cursor)
    {
        if (contentvalues == null)
        {
            return cursor == null;
        }
        if (cursor == null || cursor.getCount() != 1)
        {
            return false;
        }
        cursor.moveToFirst();
        int l = cursor.getColumnCount();
        int k = contentvalues.size();
        int i = k;
        if (contentvalues.containsKey("rowid"))
        {
            i = k - 1;
        }
        k = l;
        if (cursor.getColumnIndex("rowid") != -1)
        {
            k = l - 1;
        }
        if (i != k)
        {
            return false;
        }
        Iterator iterator = contentvalues.valueSet().iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Object obj = (String)((java.util.Map.Entry)iterator.next()).getKey();
        if (((String) (obj)).equals("rowid")) goto _L4; else goto _L3
_L3:
        int j = cursor.getColumnIndex(((String) (obj)));
        if (j == -1)
        {
            return false;
        }
        if (!(contentvalues.get(((String) (obj))) instanceof byte[])) goto _L6; else goto _L5
_L5:
        byte abyte0[];
        obj = (byte[])contentvalues.get(((String) (obj)));
        abyte0 = cursor.getBlob(j);
        boolean flag;
        if (obj == null && abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_360;
        }
        if (obj != null || abyte0 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        j = 0;
          goto _L7
_L14:
        if (obj.length == abyte0.length) goto _L9; else goto _L8
_L8:
        j = 0;
          goto _L7
_L15:
        if (j >= obj.length)
        {
            break MISSING_BLOCK_LABEL_360;
        }
        if (obj[j] == abyte0[j]) goto _L11; else goto _L10
_L10:
        j = 0;
          goto _L7
_L6:
        if (cursor.getString(j) == null && contentvalues.get(((String) (obj))) != null)
        {
            return false;
        }
        if (contentvalues.get(((String) (obj))) == null)
        {
            return false;
        }
        try
        {
            flag = contentvalues.get(((String) (obj))).toString().equals(cursor.getString(j));
        }
        // Misplaced declaration of an exception variable
        catch (ContentValues contentvalues)
        {
            contentvalues.printStackTrace();
            return false;
        }
        if (!flag)
        {
            return false;
        }
          goto _L4
_L2:
        return true;
_L7:
        if (j != 0) goto _L4; else goto _L12
_L12:
        return false;
        if (obj == null || abyte0 != null) goto _L14; else goto _L13
_L13:
        j = 0;
          goto _L7
_L9:
        j = 0;
          goto _L15
_L11:
        j++;
          goto _L15
        j = 1;
          goto _L7
    }

    public static String getColName(Field field)
    {
        if (field != null)
        {
            if ((field = field.getName()) != null && field.length() > 0)
            {
                if (field.startsWith("field_"))
                {
                    return field.substring(6);
                } else
                {
                    return field;
                }
            }
        }
        return null;
    }

    public static Cursor getCursorForProjection(ContentValues contentvalues, String as[])
    {
        Object aobj[] = new Object[as.length];
        for (int i = 0; i < aobj.length; i++)
        {
            aobj[i] = contentvalues.get(as[i]);
        }

        contentvalues = new MatrixCursor(as);
        contentvalues.addRow(aobj);
        return contentvalues;
    }

    public static Field[] getValidFields(Class class1)
    {
        return initAutoDBInfo(class1).fields;
    }

    public static MAutoDBInfo initAutoDBInfo(Class class1)
    {
        MAutoDBInfo mautodbinfo;
        LinkedList linkedlist;
        Field afield[];
        int i;
        int j;
        mautodbinfo = new MAutoDBInfo();
        linkedlist = new LinkedList();
        afield = class1.getDeclaredFields();
        j = afield.length;
        i = 0;
_L9:
        if (i >= j) goto _L2; else goto _L1
_L1:
        String s;
        Field field;
        int k;
        field = afield[i];
        k = field.getModifiers();
        s = field.getName();
        if (s == null || !Modifier.isPublic(k) || Modifier.isFinal(k)) goto _L4; else goto _L3
_L3:
        if (s.startsWith("field_"))
        {
            class1 = s.substring(6);
        } else
        {
            class1 = s;
        }
        if (!field.isAnnotationPresent(com/tencent/mm/sdk/storage/MAutoDBFieldAnnotation)) goto _L6; else goto _L5
_L5:
        if (((MAutoDBFieldAnnotation)field.getAnnotation(com/tencent/mm/sdk/storage/MAutoDBFieldAnnotation)).primaryKey() == 1)
        {
            mautodbinfo.primaryKey = class1;
        }
_L7:
        if (!Util.isNullOrNil(class1))
        {
            if (class1.equals("rowid"))
            {
                Assert.assertTrue("field_rowid reserved by MAutoDBItem, change now!", false);
            }
            linkedlist.add(field);
        }
_L4:
        i++;
        continue; /* Loop/switch isn't completed */
_L6:
        if (!s.startsWith("field_")) goto _L4; else goto _L7
_L2:
        mautodbinfo.fields = (Field[])linkedlist.toArray(new Field[0]);
        mautodbinfo.columns = a(mautodbinfo.fields);
        mautodbinfo.colsMap = b(mautodbinfo.fields);
        mautodbinfo.sql = c(mautodbinfo.fields);
        return mautodbinfo;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public abstract void convertFrom(Cursor cursor);

    public abstract ContentValues convertTo();

    protected abstract MAutoDBInfo getDBInfo();
}
