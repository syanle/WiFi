// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            TokenCachingStrategy, LoggingBehavior

public class SharedPreferencesTokenCachingStrategy extends TokenCachingStrategy
{

    private static final String DEFAULT_CACHE_KEY = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
    private static final String JSON_VALUE = "value";
    private static final String JSON_VALUE_ENUM_TYPE = "enumType";
    private static final String JSON_VALUE_TYPE = "valueType";
    private static final String TAG = com/facebook/SharedPreferencesTokenCachingStrategy.getSimpleName();
    private static final String TYPE_BOOLEAN = "bool";
    private static final String TYPE_BOOLEAN_ARRAY = "bool[]";
    private static final String TYPE_BYTE = "byte";
    private static final String TYPE_BYTE_ARRAY = "byte[]";
    private static final String TYPE_CHAR = "char";
    private static final String TYPE_CHAR_ARRAY = "char[]";
    private static final String TYPE_DOUBLE = "double";
    private static final String TYPE_DOUBLE_ARRAY = "double[]";
    private static final String TYPE_ENUM = "enum";
    private static final String TYPE_FLOAT = "float";
    private static final String TYPE_FLOAT_ARRAY = "float[]";
    private static final String TYPE_INTEGER = "int";
    private static final String TYPE_INTEGER_ARRAY = "int[]";
    private static final String TYPE_LONG = "long";
    private static final String TYPE_LONG_ARRAY = "long[]";
    private static final String TYPE_SHORT = "short";
    private static final String TYPE_SHORT_ARRAY = "short[]";
    private static final String TYPE_STRING = "string";
    private static final String TYPE_STRING_LIST = "stringList";
    private SharedPreferences cache;
    private String cacheKey;

    public SharedPreferencesTokenCachingStrategy(Context context)
    {
        this(context, null);
    }

    public SharedPreferencesTokenCachingStrategy(Context context, String s)
    {
        Validate.notNull(context, "context");
        String s1 = s;
        if (Utility.isNullOrEmpty(s))
        {
            s1 = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
        }
        cacheKey = s1;
        s = context.getApplicationContext();
        if (s != null)
        {
            context = s;
        }
        cache = context.getSharedPreferences(cacheKey, 0);
    }

    private void deserializeKey(String s, Bundle bundle)
        throws JSONException
    {
        Object obj;
        Object obj1;
        obj = new JSONObject(cache.getString(s, "{}"));
        obj1 = ((JSONObject) (obj)).getString("valueType");
        if (!((String) (obj1)).equals("bool")) goto _L2; else goto _L1
_L1:
        bundle.putBoolean(s, ((JSONObject) (obj)).getBoolean("value"));
_L4:
        return;
_L2:
        if (((String) (obj1)).equals("bool[]"))
        {
            obj = ((JSONObject) (obj)).getJSONArray("value");
            obj1 = new boolean[((JSONArray) (obj)).length()];
            int i = 0;
            do
            {
                if (i >= obj1.length)
                {
                    bundle.putBooleanArray(s, ((boolean []) (obj1)));
                    return;
                }
                obj1[i] = ((JSONArray) (obj)).getBoolean(i);
                i++;
            } while (true);
        }
        if (((String) (obj1)).equals("byte"))
        {
            bundle.putByte(s, (byte)((JSONObject) (obj)).getInt("value"));
            return;
        }
        if (((String) (obj1)).equals("byte[]"))
        {
            obj = ((JSONObject) (obj)).getJSONArray("value");
            obj1 = new byte[((JSONArray) (obj)).length()];
            int j = 0;
            do
            {
                if (j >= obj1.length)
                {
                    bundle.putByteArray(s, ((byte []) (obj1)));
                    return;
                }
                obj1[j] = (byte)((JSONArray) (obj)).getInt(j);
                j++;
            } while (true);
        }
        if (((String) (obj1)).equals("short"))
        {
            bundle.putShort(s, (short)((JSONObject) (obj)).getInt("value"));
            return;
        }
        if (((String) (obj1)).equals("short[]"))
        {
            obj = ((JSONObject) (obj)).getJSONArray("value");
            obj1 = new short[((JSONArray) (obj)).length()];
            int k = 0;
            do
            {
                if (k >= obj1.length)
                {
                    bundle.putShortArray(s, ((short []) (obj1)));
                    return;
                }
                obj1[k] = (short)((JSONArray) (obj)).getInt(k);
                k++;
            } while (true);
        }
        if (((String) (obj1)).equals("int"))
        {
            bundle.putInt(s, ((JSONObject) (obj)).getInt("value"));
            return;
        }
        if (((String) (obj1)).equals("int[]"))
        {
            obj = ((JSONObject) (obj)).getJSONArray("value");
            obj1 = new int[((JSONArray) (obj)).length()];
            int l = 0;
            do
            {
                if (l >= obj1.length)
                {
                    bundle.putIntArray(s, ((int []) (obj1)));
                    return;
                }
                obj1[l] = ((JSONArray) (obj)).getInt(l);
                l++;
            } while (true);
        }
        if (((String) (obj1)).equals("long"))
        {
            bundle.putLong(s, ((JSONObject) (obj)).getLong("value"));
            return;
        }
        if (((String) (obj1)).equals("long[]"))
        {
            obj = ((JSONObject) (obj)).getJSONArray("value");
            obj1 = new long[((JSONArray) (obj)).length()];
            int i1 = 0;
            do
            {
                if (i1 >= obj1.length)
                {
                    bundle.putLongArray(s, ((long []) (obj1)));
                    return;
                }
                obj1[i1] = ((JSONArray) (obj)).getLong(i1);
                i1++;
            } while (true);
        }
        if (((String) (obj1)).equals("float"))
        {
            bundle.putFloat(s, (float)((JSONObject) (obj)).getDouble("value"));
            return;
        }
        if (((String) (obj1)).equals("float[]"))
        {
            obj = ((JSONObject) (obj)).getJSONArray("value");
            obj1 = new float[((JSONArray) (obj)).length()];
            int j1 = 0;
            do
            {
                if (j1 >= obj1.length)
                {
                    bundle.putFloatArray(s, ((float []) (obj1)));
                    return;
                }
                obj1[j1] = (float)((JSONArray) (obj)).getDouble(j1);
                j1++;
            } while (true);
        }
        if (((String) (obj1)).equals("double"))
        {
            bundle.putDouble(s, ((JSONObject) (obj)).getDouble("value"));
            return;
        }
        if (((String) (obj1)).equals("double[]"))
        {
            obj = ((JSONObject) (obj)).getJSONArray("value");
            obj1 = new double[((JSONArray) (obj)).length()];
            int k1 = 0;
            do
            {
                if (k1 >= obj1.length)
                {
                    bundle.putDoubleArray(s, ((double []) (obj1)));
                    return;
                }
                obj1[k1] = ((JSONArray) (obj)).getDouble(k1);
                k1++;
            } while (true);
        }
        if (!((String) (obj1)).equals("char"))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = ((JSONObject) (obj)).getString("value");
        if (obj != null && ((String) (obj)).length() == 1)
        {
            bundle.putChar(s, ((String) (obj)).charAt(0));
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (((String) (obj1)).equals("char[]"))
        {
            obj = ((JSONObject) (obj)).getJSONArray("value");
            obj1 = new char[((JSONArray) (obj)).length()];
            int l1 = 0;
            do
            {
                if (l1 >= obj1.length)
                {
                    bundle.putCharArray(s, ((char []) (obj1)));
                    return;
                }
                String s1 = ((JSONArray) (obj)).getString(l1);
                if (s1 != null && s1.length() == 1)
                {
                    obj1[l1] = s1.charAt(0);
                }
                l1++;
            } while (true);
        }
        if (((String) (obj1)).equals("string"))
        {
            bundle.putString(s, ((JSONObject) (obj)).getString("value"));
            return;
        }
        if (((String) (obj1)).equals("stringList"))
        {
            obj1 = ((JSONObject) (obj)).getJSONArray("value");
            int j2 = ((JSONArray) (obj1)).length();
            ArrayList arraylist = new ArrayList(j2);
            int i2 = 0;
            do
            {
                if (i2 >= j2)
                {
                    bundle.putStringArrayList(s, arraylist);
                    return;
                }
                obj = ((JSONArray) (obj1)).get(i2);
                if (obj == JSONObject.NULL)
                {
                    obj = null;
                } else
                {
                    obj = (String)obj;
                }
                arraylist.add(i2, obj);
                i2++;
            } while (true);
        }
        if (((String) (obj1)).equals("enum"))
        {
            try
            {
                bundle.putSerializable(s, Enum.valueOf(Class.forName(((JSONObject) (obj)).getString("enumType")), ((JSONObject) (obj)).getString("value")));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return;
            }
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    private void serializeKey(String s, Bundle bundle, android.content.SharedPreferences.Editor editor)
        throws JSONException
    {
        Object obj1;
        int i;
        int j;
        int k;
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        j = 0;
        k = 0;
        flag = false;
        flag1 = false;
        flag2 = false;
        flag3 = false;
        flag4 = false;
        i = 0;
        obj1 = bundle.get(s);
        if (obj1 != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Object obj;
        JSONObject jsonobject;
        bundle = null;
        obj = null;
        jsonobject = new JSONObject();
        if (!(obj1 instanceof Byte))
        {
            break; /* Loop/switch isn't completed */
        }
        bundle = "byte";
        jsonobject.put("value", ((Byte)obj1).intValue());
_L4:
        if (bundle != null)
        {
            jsonobject.put("valueType", bundle);
            if (obj != null)
            {
                jsonobject.putOpt("value", obj);
            }
            editor.putString(s, jsonobject.toString());
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (obj1 instanceof Short)
        {
            bundle = "short";
            jsonobject.put("value", ((Short)obj1).intValue());
        } else
        if (obj1 instanceof Integer)
        {
            bundle = "int";
            jsonobject.put("value", ((Integer)obj1).intValue());
        } else
        if (obj1 instanceof Long)
        {
            bundle = "long";
            jsonobject.put("value", ((Long)obj1).longValue());
        } else
        if (obj1 instanceof Float)
        {
            bundle = "float";
            jsonobject.put("value", ((Float)obj1).doubleValue());
        } else
        if (obj1 instanceof Double)
        {
            bundle = "double";
            jsonobject.put("value", ((Double)obj1).doubleValue());
        } else
        if (obj1 instanceof Boolean)
        {
            bundle = "bool";
            jsonobject.put("value", ((Boolean)obj1).booleanValue());
        } else
        if (obj1 instanceof Character)
        {
            bundle = "char";
            jsonobject.put("value", obj1.toString());
        } else
        if (obj1 instanceof String)
        {
            bundle = "string";
            jsonobject.put("value", (String)obj1);
        } else
        {
label0:
            {
                if (!(obj1 instanceof Enum))
                {
                    break label0;
                }
                bundle = "enum";
                jsonobject.put("value", obj1.toString());
                jsonobject.put("enumType", obj1.getClass().getName());
            }
        }
          goto _L4
        JSONArray jsonarray;
        String s1;
        jsonarray = new JSONArray();
        if (!(obj1 instanceof byte[]))
        {
            break MISSING_BLOCK_LABEL_464;
        }
        s1 = "byte[]";
        obj1 = (byte[])obj1;
        j = obj1.length;
_L6:
        obj = jsonarray;
        bundle = s1;
        if (i >= j) goto _L4; else goto _L5
_L5:
        jsonarray.put(obj1[i]);
        i++;
          goto _L6
        if (!(obj1 instanceof short[]))
        {
            break MISSING_BLOCK_LABEL_526;
        }
        s1 = "short[]";
        obj1 = (short[])obj1;
        k = obj1.length;
        i = j;
_L8:
        obj = jsonarray;
        bundle = s1;
        if (i >= k) goto _L4; else goto _L7
_L7:
        jsonarray.put(obj1[i]);
        i++;
          goto _L8
        if (!(obj1 instanceof int[]))
        {
            break MISSING_BLOCK_LABEL_588;
        }
        s1 = "int[]";
        obj1 = (int[])obj1;
        j = obj1.length;
        i = k;
_L10:
        obj = jsonarray;
        bundle = s1;
        if (i >= j) goto _L4; else goto _L9
_L9:
        jsonarray.put(obj1[i]);
        i++;
          goto _L10
        if (!(obj1 instanceof long[]))
        {
            break MISSING_BLOCK_LABEL_650;
        }
        s1 = "long[]";
        obj1 = (long[])obj1;
        j = obj1.length;
        i = ((flag) ? 1 : 0);
_L12:
        obj = jsonarray;
        bundle = s1;
        if (i >= j) goto _L4; else goto _L11
_L11:
        jsonarray.put(obj1[i]);
        i++;
          goto _L12
        if (!(obj1 instanceof float[]))
        {
            break MISSING_BLOCK_LABEL_713;
        }
        s1 = "float[]";
        obj1 = (float[])obj1;
        j = obj1.length;
        i = ((flag1) ? 1 : 0);
_L14:
        obj = jsonarray;
        bundle = s1;
        if (i >= j) goto _L4; else goto _L13
_L13:
        jsonarray.put(obj1[i]);
        i++;
          goto _L14
        if (!(obj1 instanceof double[]))
        {
            break MISSING_BLOCK_LABEL_775;
        }
        s1 = "double[]";
        obj1 = (double[])obj1;
        j = obj1.length;
        i = ((flag2) ? 1 : 0);
_L16:
        obj = jsonarray;
        bundle = s1;
        if (i >= j) goto _L4; else goto _L15
_L15:
        jsonarray.put(obj1[i]);
        i++;
          goto _L16
        if (!(obj1 instanceof boolean[]))
        {
            break MISSING_BLOCK_LABEL_837;
        }
        s1 = "bool[]";
        obj1 = (boolean[])obj1;
        j = obj1.length;
        i = ((flag3) ? 1 : 0);
_L18:
        obj = jsonarray;
        bundle = s1;
        if (i >= j) goto _L4; else goto _L17
_L17:
        jsonarray.put(obj1[i]);
        i++;
          goto _L18
        if (!(obj1 instanceof char[]))
        {
            break MISSING_BLOCK_LABEL_902;
        }
        s1 = "char[]";
        obj1 = (char[])obj1;
        j = obj1.length;
        i = ((flag4) ? 1 : 0);
_L20:
        obj = jsonarray;
        bundle = s1;
        if (i >= j) goto _L4; else goto _L19
_L19:
        jsonarray.put(String.valueOf(obj1[i]));
        i++;
          goto _L20
        if (!(obj1 instanceof List))
        {
            break MISSING_BLOCK_LABEL_977;
        }
        s1 = "stringList";
        obj1 = ((List)obj1).iterator();
_L22:
        obj = jsonarray;
        bundle = s1;
        if (!((Iterator) (obj1)).hasNext()) goto _L4; else goto _L21
_L21:
        obj = (String)((Iterator) (obj1)).next();
        bundle = ((Bundle) (obj));
        if (obj == null)
        {
            bundle = ((Bundle) (JSONObject.NULL));
        }
        jsonarray.put(bundle);
          goto _L22
        obj = null;
          goto _L4
    }

    public void clear()
    {
        cache.edit().clear().commit();
    }

    public Bundle load()
    {
        Bundle bundle = new Bundle();
        Iterator iterator = cache.getAll().keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return bundle;
            }
            String s = (String)iterator.next();
            try
            {
                deserializeKey(s, bundle);
            }
            catch (JSONException jsonexception)
            {
                Logger.log(LoggingBehavior.CACHE, 5, TAG, (new StringBuilder("Error reading cached value for key: '")).append(s).append("' -- ").append(jsonexception).toString());
                return null;
            }
        } while (true);
    }

    public void save(Bundle bundle)
    {
        Validate.notNull(bundle, "bundle");
        android.content.SharedPreferences.Editor editor = cache.edit();
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                if (!editor.commit())
                {
                    Logger.log(LoggingBehavior.CACHE, 5, TAG, "SharedPreferences.Editor.commit() was not successful");
                }
                return;
            }
            String s = (String)iterator.next();
            try
            {
                serializeKey(s, bundle, editor);
            }
            // Misplaced declaration of an exception variable
            catch (Bundle bundle)
            {
                Logger.log(LoggingBehavior.CACHE, 5, TAG, (new StringBuilder("Error processing value for key: '")).append(s).append("' -- ").append(bundle).toString());
                return;
            }
        } while (true);
    }

}
