// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.storage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.platformtools.Log;
import com.tencent.mm.sdk.platformtools.Util;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.sdk.storage:
//            MStorage, ISQLiteDatabase, IAutoDBItem

public abstract class MAutoStorage extends MStorage
{

    private final ISQLiteDatabase bS;
    private final IAutoDBItem.MAutoDBInfo bT;
    private final String bU;

    public MAutoStorage(ISQLiteDatabase isqlitedatabase, IAutoDBItem.MAutoDBInfo mautodbinfo, String s, String as[])
    {
        boolean flag = false;
        super();
        bS = isqlitedatabase;
        bT = mautodbinfo;
        mautodbinfo = bT;
        if (Util.isNullOrNil(bT.primaryKey))
        {
            isqlitedatabase = "rowid";
        } else
        {
            isqlitedatabase = bT.primaryKey;
        }
        mautodbinfo.primaryKey = isqlitedatabase;
        bU = s;
        isqlitedatabase = getUpdateSQLs(bT, getTableName(), bS);
        for (int i = 0; i < isqlitedatabase.size(); i++)
        {
            bS.execSQL(bU, (String)isqlitedatabase.get(i));
        }

        if (as != null && as.length > 0)
        {
            for (int j = ((flag) ? 1 : 0); j < as.length; j++)
            {
                bS.execSQL(bU, as[j]);
            }

        }
    }

    private static transient StringBuilder a(ContentValues contentvalues, String as[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        int j = as.length;
        for (int i = 0; i < j; i++)
        {
            String s = as[i];
            stringbuilder.append((new StringBuilder()).append(s).append(" = ? AND ").toString());
            if (contentvalues.get(s) == null)
            {
                return null;
            }
        }

        stringbuilder.append(" 1=1");
        return stringbuilder;
    }

    private boolean a(ContentValues contentvalues)
    {
        Cursor cursor = bS.query(getTableName(), bT.columns, (new StringBuilder()).append(bT.primaryKey).append(" = ?").toString(), new String[] {
            Util.nullAsNil(contentvalues.getAsString(bT.primaryKey))
        }, null, null, null);
        boolean flag = IAutoDBItem.checkIOEqual(contentvalues, cursor);
        cursor.close();
        return flag;
    }

    private static String[] a(String as[], ContentValues contentvalues)
    {
        String as1[] = new String[as.length];
        for (int i = 0; i < as1.length; i++)
        {
            as1[i] = Util.nullAsNil(contentvalues.getAsString(as[i]));
        }

        return as1;
    }

    private void f(String s)
    {
        Log.d("MicroMsg.SDK.MAutoStorage", (new StringBuilder()).append(getTableName()).append(":").append(s).toString());
    }

    private void g(String s)
    {
        Log.e("MicroMsg.SDK.MAutoStorage", (new StringBuilder()).append(getTableName()).append(":").append(s).toString());
    }

    public static String getCreateSQLs(IAutoDBItem.MAutoDBInfo mautodbinfo, String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append((new StringBuilder("CREATE TABLE IF NOT EXISTS ")).append(s).append(" ( ").toString());
        stringbuilder.append(mautodbinfo.sql);
        stringbuilder.append(");");
        return stringbuilder.toString();
    }

    public static List getUpdateSQLs(IAutoDBItem.MAutoDBInfo mautodbinfo, String s, ISQLiteDatabase isqlitedatabase)
    {
        LinkedList linkedlist = new LinkedList();
        HashMap hashmap = new HashMap();
        isqlitedatabase = isqlitedatabase.rawQuery((new StringBuilder("PRAGMA table_info( ")).append(s).append(" )").toString(), new String[0]);
        if (isqlitedatabase == null)
        {
            return linkedlist;
        }
        for (; isqlitedatabase.moveToNext(); hashmap.put(isqlitedatabase.getString(isqlitedatabase.getColumnIndex("name")), isqlitedatabase.getString(isqlitedatabase.getColumnIndex("type")))) { }
        isqlitedatabase.close();
        mautodbinfo = mautodbinfo.colsMap.entrySet().iterator();
        do
        {
            if (!mautodbinfo.hasNext())
            {
                break;
            }
            Object obj = (java.util.Map.Entry)mautodbinfo.next();
            isqlitedatabase = (String)((java.util.Map.Entry) (obj)).getValue();
            obj = (String)((java.util.Map.Entry) (obj)).getKey();
            if (isqlitedatabase != null && isqlitedatabase.length() > 0)
            {
                String s1 = (String)hashmap.get(obj);
                if (s1 == null)
                {
                    linkedlist.add((new StringBuilder("ALTER TABLE ")).append(s).append(" ADD COLUMN ").append(((String) (obj))).append(" ").append(isqlitedatabase).append(";").toString());
                    hashmap.remove(obj);
                } else
                if (!s1.equalsIgnoreCase(isqlitedatabase))
                {
                    Log.e("MicroMsg.SDK.MAutoStorage", (new StringBuilder("conflicting alter table on column: ")).append(((String) (obj))).append(", ").append(s1).append("<o-n>").append(isqlitedatabase).toString());
                    hashmap.remove(obj);
                }
            }
        } while (true);
        return linkedlist;
    }

    public boolean delete(long l)
    {
        boolean flag = true;
        if (bS.delete(getTableName(), "rowid = ?", new String[] {
    String.valueOf(l)
}) <= 0)
        {
            flag = false;
        }
        if (flag)
        {
            notify();
        }
        return flag;
    }

    public transient boolean delete(IAutoDBItem iautodbitem, String as[])
    {
        boolean flag = false;
        boolean flag1 = false;
        iautodbitem = iautodbitem.convertTo();
        if (iautodbitem == null || iautodbitem.size() <= 0)
        {
            g("delete failed, value.size <= 0");
        } else
        if (as == null || as.length <= 0)
        {
            f("delete with primary key");
            if (bS.delete(getTableName(), (new StringBuilder()).append(bT.primaryKey).append(" = ?").toString(), new String[] {
    Util.nullAsNil(iautodbitem.getAsString(bT.primaryKey))
}) > 0)
            {
                flag = true;
            }
            flag1 = flag;
            if (flag)
            {
                doNotify();
                return flag;
            }
        } else
        {
            StringBuilder stringbuilder = a(iautodbitem, as);
            if (stringbuilder == null)
            {
                g("delete failed, check keys failed");
                return false;
            }
            if (bS.delete(getTableName(), stringbuilder.toString(), a(as, iautodbitem)) > 0)
            {
                doNotify(bT.primaryKey);
                return true;
            } else
            {
                g("delete failed");
                return false;
            }
        }
        return flag1;
    }

    public boolean get(long l, IAutoDBItem iautodbitem)
    {
        Cursor cursor = bS.query(getTableName(), bT.columns, "rowid = ?", new String[] {
            String.valueOf(l)
        }, null, null, null);
        if (cursor.moveToFirst())
        {
            iautodbitem.convertFrom(cursor);
            cursor.close();
            return true;
        } else
        {
            cursor.close();
            return false;
        }
    }

    public transient boolean get(IAutoDBItem iautodbitem, String as[])
    {
        ContentValues contentvalues = iautodbitem.convertTo();
        if (contentvalues == null || contentvalues.size() <= 0)
        {
            g("get failed, value.size <= 0");
            return false;
        }
        if (as == null || as.length <= 0)
        {
            f("get with primary key");
            as = bS.query(getTableName(), bT.columns, (new StringBuilder()).append(bT.primaryKey).append(" = ?").toString(), new String[] {
                Util.nullAsNil(contentvalues.getAsString(bT.primaryKey))
            }, null, null, null);
            if (as.moveToFirst())
            {
                iautodbitem.convertFrom(as);
                as.close();
                return true;
            } else
            {
                as.close();
                return false;
            }
        }
        StringBuilder stringbuilder = a(contentvalues, as);
        if (stringbuilder == null)
        {
            g("get failed, check keys failed");
            return false;
        }
        as = bS.query(getTableName(), bT.columns, stringbuilder.toString(), a(as, contentvalues), null, null, null);
        if (as.moveToFirst())
        {
            iautodbitem.convertFrom(as);
            as.close();
            return true;
        } else
        {
            as.close();
            f("get failed, not found");
            return false;
        }
    }

    public Cursor getAll()
    {
        return bS.query(getTableName(), bT.columns, null, null, null, null, null);
    }

    public int getCount()
    {
        int i = 0;
        Cursor cursor = rawQuery((new StringBuilder("select count(*) from ")).append(getTableName()).toString(), new String[0]);
        if (cursor != null)
        {
            cursor.moveToFirst();
            i = cursor.getInt(0);
            cursor.close();
        }
        return i;
    }

    public String getPrimaryKey()
    {
        return bT.primaryKey;
    }

    public String getTableName()
    {
        return bU;
    }

    public boolean insert(IAutoDBItem iautodbitem)
    {
        ContentValues contentvalues = iautodbitem.convertTo();
        if (contentvalues == null || contentvalues.size() <= 0)
        {
            g("insert failed, value.size <= 0");
            return false;
        }
        iautodbitem.systemRowid = bS.insert(getTableName(), bT.primaryKey, contentvalues);
        if (iautodbitem.systemRowid <= 0L)
        {
            g("insert failed");
            return false;
        } else
        {
            contentvalues.put("rowid", Long.valueOf(iautodbitem.systemRowid));
            doNotify(contentvalues.getAsString(bT.primaryKey));
            return true;
        }
    }

    public transient Cursor rawQuery(String s, String as[])
    {
        return bS.rawQuery(s, as);
    }

    public boolean replace(IAutoDBItem iautodbitem)
    {
        ContentValues contentvalues;
label0:
        {
            boolean flag;
            if (!Util.isNullOrNil(bT.primaryKey))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue("replace primaryKey == null", flag);
            contentvalues = iautodbitem.convertTo();
            if (contentvalues != null)
            {
                int j = contentvalues.size();
                int k = iautodbitem.getDBInfo().fields.length;
                int i;
                if (contentvalues.containsKey("rowid"))
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                if (j == i + k)
                {
                    break label0;
                }
            }
            g("replace failed, cv.size() != item.fields().length");
            return false;
        }
        if (a(contentvalues))
        {
            f("no need replace , fields no change");
            return true;
        }
        if (bS.replace(getTableName(), bT.primaryKey, contentvalues) > 0L)
        {
            doNotify(bT.primaryKey);
            return true;
        } else
        {
            g("replace failed");
            return false;
        }
    }

    public boolean update(long l, IAutoDBItem iautodbitem)
    {
        iautodbitem = iautodbitem.convertTo();
        boolean flag1;
        if (iautodbitem == null || iautodbitem.size() <= 0)
        {
            g("update failed, value.size <= 0");
            flag1 = false;
        } else
        {
            Cursor cursor = bS.query(getTableName(), bT.columns, "rowid = ?", new String[] {
                String.valueOf(l)
            }, null, null, null);
            if (IAutoDBItem.checkIOEqual(iautodbitem, cursor))
            {
                cursor.close();
                f("no need replace , fields no change");
                return true;
            }
            cursor.close();
            boolean flag;
            if (bS.update(getTableName(), iautodbitem, "rowid = ?", new String[] {
    String.valueOf(l)
}) > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            flag1 = flag;
            if (flag)
            {
                doNotify();
                return flag;
            }
        }
        return flag1;
    }

    public transient boolean update(IAutoDBItem iautodbitem, String as[])
    {
        boolean flag = false;
        boolean flag1 = false;
        iautodbitem = iautodbitem.convertTo();
        if (iautodbitem == null || iautodbitem.size() <= 0)
        {
            g("update failed, value.size <= 0");
        } else
        if (as == null || as.length <= 0)
        {
            f("update with primary key");
            if (a(iautodbitem))
            {
                f("no need replace , fields no change");
                return true;
            }
            if (bS.update(getTableName(), iautodbitem, (new StringBuilder()).append(bT.primaryKey).append(" = ?").toString(), new String[] {
    Util.nullAsNil(iautodbitem.getAsString(bT.primaryKey))
}) > 0)
            {
                flag = true;
            }
            flag1 = flag;
            if (flag)
            {
                doNotify();
                return flag;
            }
        } else
        {
            StringBuilder stringbuilder = a(iautodbitem, as);
            if (stringbuilder == null)
            {
                g("update failed, check keys failed");
                return false;
            }
            if (bS.update(getTableName(), iautodbitem, stringbuilder.toString(), a(as, iautodbitem)) > 0)
            {
                doNotify(bT.primaryKey);
                return true;
            } else
            {
                g("update failed");
                return false;
            }
        }
        return flag1;
    }
}
