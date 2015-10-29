// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.content.Context;
import android.content.SharedPreferences;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.Ln;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class PlatformDb
{

    private static final String DB_NAME = "cn_sharesdk_weibodb";
    private SharedPreferences db;
    private String platformNname;
    private int platformVersion;

    public PlatformDb(Context context, String s, int i)
    {
        db = context.getSharedPreferences((new StringBuilder()).append("cn_sharesdk_weibodb_").append(s).append("_").append(i).toString(), 0);
        platformNname = s;
        platformVersion = i;
    }

    public String exportData()
    {
        Object obj;
        try
        {
            obj = new HashMap();
            ((HashMap) (obj)).putAll(db.getAll());
            obj = (new Hashon()).fromHashMap(((HashMap) (obj)));
        }
        catch (Throwable throwable)
        {
            Ln.w(throwable);
            return null;
        }
        return ((String) (obj));
    }

    public String get(String s)
    {
        return db.getString(s, "");
    }

    public long getExpiresIn()
    {
        long l;
        try
        {
            l = db.getLong("expiresIn", 0L);
        }
        catch (Throwable throwable)
        {
            int i;
            try
            {
                i = db.getInt("expiresIn", 0);
            }
            catch (Throwable throwable1)
            {
                return 0L;
            }
            return (long)i;
        }
        return l;
    }

    public long getExpiresTime()
    {
        return db.getLong("expiresTime", 0L) + getExpiresIn() * 1000L;
    }

    public String getPlatformNname()
    {
        return platformNname;
    }

    public int getPlatformVersion()
    {
        return platformVersion;
    }

    public String getToken()
    {
        return db.getString("token", "");
    }

    public String getTokenSecret()
    {
        return db.getString("secret", "");
    }

    public String getUserGender()
    {
        String s = db.getString("gender", "2");
        if ("0".equals(s))
        {
            return "m";
        }
        if ("1".equals(s))
        {
            return "f";
        } else
        {
            return null;
        }
    }

    public String getUserIcon()
    {
        return db.getString("icon", "");
    }

    public String getUserId()
    {
        return db.getString("weibo", "");
    }

    public String getUserName()
    {
        return db.getString("nickname", "");
    }

    public void importData(String s)
    {
        Object obj = (new Hashon()).fromJson(s);
        if (obj == null) goto _L2; else goto _L1
_L1:
        s = db.edit();
        obj = ((HashMap) (obj)).entrySet().iterator();
_L5:
        java.util.Map.Entry entry;
        Object obj1;
        if (!((Iterator) (obj)).hasNext())
        {
            break MISSING_BLOCK_LABEL_234;
        }
        entry = (java.util.Map.Entry)((Iterator) (obj)).next();
        obj1 = entry.getValue();
        if (!(obj1 instanceof Boolean)) goto _L4; else goto _L3
_L3:
        s.putBoolean((String)entry.getKey(), ((Boolean)obj1).booleanValue());
          goto _L5
        s;
        Ln.w(s);
_L2:
        return;
_L4:
label0:
        {
            if (!(obj1 instanceof Float))
            {
                break label0;
            }
            s.putFloat((String)entry.getKey(), ((Float)obj1).floatValue());
        }
          goto _L5
label1:
        {
            if (!(obj1 instanceof Integer))
            {
                break label1;
            }
            s.putInt((String)entry.getKey(), ((Integer)obj1).intValue());
        }
          goto _L5
label2:
        {
            if (!(obj1 instanceof Long))
            {
                break label2;
            }
            s.putLong((String)entry.getKey(), ((Long)obj1).longValue());
        }
          goto _L5
        s.putString((String)entry.getKey(), String.valueOf(obj1));
          goto _L5
        s.commit();
        return;
    }

    public boolean isValid()
    {
        boolean flag1 = true;
        String s = getToken();
        boolean flag;
        if (s == null || s.length() <= 0)
        {
            flag = false;
        } else
        {
            flag = flag1;
            if (getExpiresIn() != 0L)
            {
                flag = flag1;
                if (getExpiresTime() <= System.currentTimeMillis())
                {
                    return false;
                }
            }
        }
        return flag;
    }

    public void put(String s, String s1)
    {
        android.content.SharedPreferences.Editor editor = db.edit();
        editor.putString(s, s1);
        editor.commit();
    }

    public void putExpiresIn(long l)
    {
        android.content.SharedPreferences.Editor editor = db.edit();
        editor.putLong("expiresIn", l);
        editor.putLong("expiresTime", System.currentTimeMillis());
        editor.commit();
    }

    public void putToken(String s)
    {
        android.content.SharedPreferences.Editor editor = db.edit();
        editor.putString("token", s);
        editor.commit();
    }

    public void putTokenSecret(String s)
    {
        android.content.SharedPreferences.Editor editor = db.edit();
        editor.putString("secret", s);
        editor.commit();
    }

    public void putUserId(String s)
    {
        android.content.SharedPreferences.Editor editor = db.edit();
        editor.putString("weibo", s);
        editor.commit();
    }

    public void removeAccount()
    {
        Object obj = new ArrayList();
        for (Iterator iterator = db.getAll().entrySet().iterator(); iterator.hasNext(); ((ArrayList) (obj)).add(((java.util.Map.Entry)iterator.next()).getKey())) { }
        android.content.SharedPreferences.Editor editor = db.edit();
        for (obj = ((ArrayList) (obj)).iterator(); ((Iterator) (obj)).hasNext(); editor.remove((String)((Iterator) (obj)).next())) { }
        editor.commit();
    }
}
