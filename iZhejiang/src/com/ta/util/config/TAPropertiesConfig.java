// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.config;

import android.content.Context;
import com.ta.common.TAReflectUtils;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.util.Enumeration;
import java.util.Properties;

// Referenced classes of package com.ta.util.config:
//            TAIConfig

public class TAPropertiesConfig
    implements TAIConfig
{

    private static final String LOADFLAG = "assetsload";
    private static TAPropertiesConfig mPropertiesConfig;
    private String assetsPath;
    private String filesPath;
    private Context mContext;
    private Properties mProperties;

    private TAPropertiesConfig(Context context)
    {
        assetsPath = "/assets/tacdonfig.properties";
        filesPath = "tacdonfig.properties";
        mContext = context;
    }

    private Properties getPro()
    {
        Properties properties = new Properties();
        try
        {
            properties.load(mContext.openFileInput(filesPath));
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return properties;
        }
        return properties;
    }

    private Properties getProperties()
    {
        if (mProperties == null)
        {
            mProperties = getPro();
        }
        return mProperties;
    }

    public static TAPropertiesConfig getPropertiesConfig(Context context)
    {
        if (mPropertiesConfig == null)
        {
            mPropertiesConfig = new TAPropertiesConfig(context);
        }
        return mPropertiesConfig;
    }

    private void getValue(Field field, String s, Object obj)
    {
        Class class1;
        try
        {
            class1 = field.getType();
            if (class1.equals(java/lang/String))
            {
                field.set(obj, getString(s, ""));
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Field field)
        {
            field.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Field field)
        {
            field.printStackTrace();
            return;
        }
        if (class1.equals(java/lang/Integer) || class1.equals(Integer.TYPE))
        {
            field.set(obj, Integer.valueOf(getInt(s, 0)));
            return;
        }
        if (class1.equals(java/lang/Float) || class1.equals(Float.TYPE))
        {
            field.set(obj, Float.valueOf(getFloat(s, Float.valueOf(0.0F))));
            return;
        }
        if (class1.equals(java/lang/Double) || class1.equals(Double.TYPE))
        {
            field.set(obj, Double.valueOf(getDouble(s, Double.valueOf(0.0D))));
            return;
        }
        if (class1.equals(java/lang/Short) || class1.equals(java/lang/Short))
        {
            field.set(obj, Short.valueOf(getShort(s, Short.valueOf((short)0))));
            return;
        }
        if (class1.equals(java/lang/Long) || class1.equals(Long.TYPE))
        {
            field.set(obj, Long.valueOf(getLong(s, Long.valueOf(0L))));
            return;
        }
        if (class1.equals(java/lang/Byte) || class1.equals(Byte.TYPE))
        {
            field.set(obj, getByte(s, new byte[8]));
            return;
        }
        if (class1.equals(java/lang/Boolean))
        {
            field.set(obj, Boolean.valueOf(getBoolean(s, Boolean.valueOf(false))));
        }
        return;
    }

    private void setProperties(Properties properties)
    {
        try
        {
            java.io.FileOutputStream fileoutputstream = mContext.openFileOutput(filesPath, 0);
            properties.store(fileoutputstream, null);
            fileoutputstream.flush();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Properties properties)
        {
            properties.printStackTrace();
        }
    }

    private void setValue(Field field, String s, Object obj)
    {
        Class class1;
        try
        {
            class1 = field.getType();
            if (class1.equals(java/lang/String))
            {
                setString(s, (String)field.get(obj));
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Field field)
        {
            field.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Field field)
        {
            field.printStackTrace();
            return;
        }
        if (class1.equals(java/lang/Integer) || class1.equals(Integer.TYPE))
        {
            setInt(s, ((Integer)field.get(obj)).intValue());
            return;
        }
        if (class1.equals(java/lang/Float) || class1.equals(Float.TYPE))
        {
            setFloat(s, ((Float)field.get(obj)).floatValue());
            return;
        }
        if (class1.equals(java/lang/Double) || class1.equals(Double.TYPE))
        {
            setDouble(s, ((Double)field.get(obj)).doubleValue());
            return;
        }
        if (class1.equals(java/lang/Short) || class1.equals(java/lang/Short))
        {
            setShort(s, ((Short)field.get(obj)).shortValue());
            return;
        }
        if (class1.equals(java/lang/Long) || class1.equals(Long.TYPE))
        {
            setLong(s, ((Long)field.get(obj)).longValue());
            return;
        }
        if (class1.equals(java/lang/Boolean))
        {
            setBoolean(s, (Boolean)field.get(obj));
        }
        return;
    }

    public void clear()
    {
        Properties properties = getProperties();
        properties.clear();
        setProperties(properties);
    }

    public void close()
    {
    }

    public String getAssetsPath()
    {
        return assetsPath;
    }

    public boolean getBoolean(int i, Boolean boolean1)
    {
        return getBoolean(mContext.getString(i), boolean1);
    }

    public boolean getBoolean(String s, Boolean boolean1)
    {
        boolean flag;
        try
        {
            flag = Boolean.valueOf(getString(s, "")).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return boolean1.booleanValue();
        }
        return flag;
    }

    public byte[] getByte(int i, byte abyte0[])
    {
        return getByte(mContext.getString(i), abyte0);
    }

    public byte[] getByte(String s, byte abyte0[])
    {
        try
        {
            s = getString(s, "").getBytes();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return abyte0;
        }
        return s;
    }

    public Object getConfig(Class class1)
    {
        int i;
        int j;
        Field afield[] = class1.getDeclaredFields();
        Class class3 = null;
        Class class2 = null;
        Field field;
        String s;
        try
        {
            class1 = ((Class) (class1.newInstance()));
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            class1.printStackTrace();
            return class2;
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            class1.printStackTrace();
            return class3;
        }
        class2 = class1;
        class3 = class1;
        j = afield.length;
        i = 0;
          goto _L1
_L3:
        field = afield[i];
        class2 = class1;
        class3 = class1;
        field.setAccessible(true);
        class2 = class1;
        class3 = class1;
        if (TAReflectUtils.isTransient(field))
        {
            continue; /* Loop/switch isn't completed */
        }
        class2 = class1;
        class3 = class1;
        if (!TAReflectUtils.isBaseDateType(field))
        {
            continue; /* Loop/switch isn't completed */
        }
        class2 = class1;
        class3 = class1;
        s = TAReflectUtils.getFieldName(field);
        class2 = class1;
        class3 = class1;
        field.setAccessible(true);
        class2 = class1;
        class3 = class1;
        getValue(field, s, class1);
        i++;
_L1:
        if (i < j) goto _L3; else goto _L2
_L2:
        return class1;
    }

    public String getConfig(String s, String s1)
    {
        return getProperties().getProperty(s, s1);
    }

    public double getDouble(int i, Double double1)
    {
        return getDouble(mContext.getString(i), double1);
    }

    public double getDouble(String s, Double double1)
    {
        double d;
        try
        {
            d = Double.valueOf(getString(s, "")).doubleValue();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return double1.doubleValue();
        }
        return d;
    }

    public String getFilesPath()
    {
        return filesPath;
    }

    public float getFloat(int i, Float float1)
    {
        return getFloat(mContext.getString(i), float1);
    }

    public float getFloat(String s, Float float1)
    {
        float f;
        try
        {
            f = Float.valueOf(getString(s, "")).floatValue();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return float1.floatValue();
        }
        return f;
    }

    public int getInt(int i, int j)
    {
        return getInt(mContext.getString(i), j);
    }

    public int getInt(String s, int i)
    {
        int j;
        try
        {
            j = Integer.valueOf(getString(s, "")).intValue();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return i;
        }
        return j;
    }

    public long getLong(int i, Long long1)
    {
        return getLong(mContext.getString(i), long1);
    }

    public long getLong(String s, Long long1)
    {
        long l;
        try
        {
            l = Long.valueOf(getString(s, "")).longValue();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return long1.longValue();
        }
        return l;
    }

    public short getShort(int i, Short short1)
    {
        return getShort(mContext.getString(i), short1);
    }

    public short getShort(String s, Short short1)
    {
        short word0;
        try
        {
            word0 = Short.valueOf(getString(s, "")).shortValue();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return short1.shortValue();
        }
        return word0;
    }

    public String getString(int i, String s)
    {
        return getString(mContext.getString(i), s);
    }

    public String getString(String s, String s1)
    {
        return getConfig(s, s1);
    }

    public boolean isClosed()
    {
        return false;
    }

    public Boolean isLoadConfig()
    {
        return Boolean.valueOf(getBoolean("assetsload", Boolean.valueOf(false)));
    }

    public void loadConfig()
    {
        Properties properties;
        Object obj;
        properties = new Properties();
        obj = com/ta/util/config/TAPropertiesConfig.getResourceAsStream(assetsPath);
        if (obj == null) goto _L2; else goto _L1
_L1:
        properties.load(((java.io.InputStream) (obj)));
        obj = properties.propertyNames();
        if (!((Enumeration) (obj)).hasMoreElements()) goto _L2; else goto _L3
_L3:
        if (((Enumeration) (obj)).hasMoreElements())
        {
            break MISSING_BLOCK_LABEL_61;
        }
_L2:
        setBoolean("assetsload", Boolean.valueOf(true));
        return;
        try
        {
            String s = (String)((Enumeration) (obj)).nextElement();
            properties.setProperty(s, properties.getProperty(s));
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
          goto _L3
    }

    public void open()
    {
    }

    public void remove(String s)
    {
        Properties properties = getProperties();
        properties.remove(s);
        setProperties(properties);
    }

    public transient void remove(String as[])
    {
        Properties properties = getProperties();
        int j = as.length;
        int i = 0;
        do
        {
            if (i >= j)
            {
                setProperties(properties);
                return;
            }
            properties.remove(as[i]);
            i++;
        } while (true);
    }

    public void setAssetsPath(String s)
    {
        assetsPath = s;
    }

    public void setBoolean(int i, Boolean boolean1)
    {
        setBoolean(mContext.getString(i), boolean1);
    }

    public void setBoolean(String s, Boolean boolean1)
    {
        setString(s, String.valueOf(boolean1));
    }

    public void setByte(int i, byte abyte0[])
    {
        setByte(mContext.getString(i), abyte0);
    }

    public void setByte(String s, byte abyte0[])
    {
        setString(s, String.valueOf(abyte0));
    }

    public void setConfig(Object obj)
    {
        Field afield[] = obj.getClass().getDeclaredFields();
        int j = afield.length;
        int i = 0;
        do
        {
            if (i >= j)
            {
                return;
            }
            Field field = afield[i];
            if (!TAReflectUtils.isTransient(field) && TAReflectUtils.isBaseDateType(field))
            {
                String s = TAReflectUtils.getFieldName(field);
                field.setAccessible(true);
                setValue(field, s, obj);
            }
            i++;
        } while (true);
    }

    public void setConfig(String s, String s1)
    {
        if (s1 != null)
        {
            Properties properties = getProperties();
            properties.setProperty(s, s1);
            setProperties(properties);
        }
    }

    public void setDouble(int i, double d)
    {
        setDouble(mContext.getString(i), d);
    }

    public void setDouble(String s, double d)
    {
        setString(s, String.valueOf(d));
    }

    public void setFilesPath(String s)
    {
        filesPath = s;
    }

    public void setFloat(int i, float f)
    {
        setFloat(mContext.getString(i), f);
    }

    public void setFloat(String s, float f)
    {
        setString(s, String.valueOf(f));
    }

    public void setInt(int i, int j)
    {
        setInt(mContext.getString(i), j);
    }

    public void setInt(String s, int i)
    {
        setString(s, String.valueOf(i));
    }

    public void setLong(int i, long l)
    {
        setLong(mContext.getString(i), l);
    }

    public void setLong(String s, long l)
    {
        setString(s, String.valueOf(l));
    }

    public void setShort(int i, short word0)
    {
        setShort(mContext.getString(i), word0);
    }

    public void setShort(String s, short word0)
    {
        setString(s, String.valueOf(word0));
    }

    public void setString(int i, String s)
    {
        setString(mContext.getString(i), s);
    }

    public void setString(String s, String s1)
    {
        setConfig(s, s1);
    }
}
