// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.utils;

import android.text.TextUtils;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.nio.channels.FileChannel;
import java.util.HashMap;

// Referenced classes of package com.mob.tools.utils:
//            Ln

public class LocalDB
{

    private File dbFile;
    private HashMap map;

    public LocalDB()
    {
    }

    private void commit()
    {
        while (map == null || dbFile == null) 
        {
            return;
        }
        if (!dbFile.getParentFile().exists())
        {
            dbFile.getParentFile().mkdirs();
        }
        HashMap hashmap = map;
        hashmap;
        JVM INSTR monitorenter ;
        Object obj;
        obj = new FileOutputStream(dbFile);
        if (((FileOutputStream) (obj)).getChannel().tryLock() == null)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        obj = new ObjectOutputStream(((java.io.OutputStream) (obj)));
        ((ObjectOutputStream) (obj)).writeObject(map);
        ((ObjectOutputStream) (obj)).flush();
        ((ObjectOutputStream) (obj)).close();
_L1:
        return;
        obj;
        hashmap;
        JVM INSTR monitorexit ;
        try
        {
            throw obj;
        }
        catch (Throwable throwable)
        {
            Ln.w(throwable);
        }
        return;
        ((FileOutputStream) (obj)).close();
          goto _L1
    }

    private Object get(String s)
    {
        if (map == null)
        {
            return null;
        } else
        {
            return map.get(s);
        }
    }

    private void put(String s, Object obj)
    {
        if (map == null)
        {
            map = new HashMap();
        }
        map.put(s, obj);
    }

    public boolean getBoolean(String s)
    {
        s = ((String) (get(s)));
        if (s == null)
        {
            return false;
        }
        if (s instanceof Boolean)
        {
            return ((Boolean)s).booleanValue();
        } else
        {
            return false;
        }
    }

    public float getFloat(String s)
    {
        s = ((String) (get(s)));
        if (s == null)
        {
            return 0.0F;
        }
        if (s instanceof Integer)
        {
            return ((Float)s).floatValue();
        } else
        {
            return 0.0F;
        }
    }

    public int getInt(String s)
    {
        s = ((String) (get(s)));
        if (s == null)
        {
            return 0;
        }
        if (s instanceof Integer)
        {
            return ((Integer)s).intValue();
        } else
        {
            return 0;
        }
    }

    public long getLong(String s)
    {
        s = ((String) (get(s)));
        if (s == null)
        {
            return 0L;
        }
        if (s instanceof Long)
        {
            return ((Long)s).longValue();
        } else
        {
            return 0L;
        }
    }

    public Object getObject(String s)
    {
        s = getString(s);
        if (TextUtils.isEmpty(s))
        {
            return null;
        }
        Object obj;
        try
        {
            s = new ObjectInputStream(new ByteArrayInputStream(Base64.decode(s, 2)));
            obj = s.readObject();
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.w(s);
            return null;
        }
        return obj;
    }

    public String getString(String s)
    {
        s = ((String) (get(s)));
        if (s == null)
        {
            return null;
        }
        if (s instanceof String)
        {
            return (String)s;
        } else
        {
            return String.valueOf(s);
        }
    }

    public void open(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return;
        }
        try
        {
            dbFile = new File(s);
            if (dbFile.exists())
            {
                s = new ObjectInputStream(new FileInputStream(dbFile));
                map = (HashMap)s.readObject();
                s.close();
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.w(s);
        }
        return;
    }

    public void putBoolean(String s, Boolean boolean1)
    {
        put(s, boolean1);
        commit();
    }

    public void putFloat(String s, Float float1)
    {
        put(s, float1);
        commit();
    }

    public void putInt(String s, Integer integer)
    {
        put(s, integer);
        commit();
    }

    public void putLong(String s, Long long1)
    {
        put(s, long1);
        commit();
    }

    public void putObject(String s, Object obj)
    {
        if (obj == null)
        {
            return;
        }
        try
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
            objectoutputstream.writeObject(obj);
            objectoutputstream.flush();
            objectoutputstream.close();
            putString(s, Base64.encodeToString(bytearrayoutputstream.toByteArray(), 2));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.w(s);
        }
    }

    public void putString(String s, String s1)
    {
        put(s, s1);
        commit();
    }

    public void remove(String s)
    {
        if (map == null)
        {
            map = new HashMap();
        }
        map.remove(s);
        commit();
    }
}
