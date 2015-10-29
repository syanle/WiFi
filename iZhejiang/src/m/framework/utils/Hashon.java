// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Hashon
{

    public Hashon()
    {
    }

    private ArrayList arrayToList(Object obj)
    {
        int j2 = 0;
        int j4 = 0;
        boolean flag = false;
        boolean flag1 = false;
        boolean flag2 = false;
        boolean flag3 = false;
        boolean flag4 = false;
        boolean flag5 = false;
        int i = 0;
        if (obj instanceof byte[])
        {
            ArrayList arraylist = new ArrayList();
            obj = (byte[])obj;
            j2 = obj.length;
            do
            {
                if (i >= j2)
                {
                    return arraylist;
                }
                arraylist.add(Byte.valueOf(obj[i]));
                i++;
            } while (true);
        }
        if (obj instanceof short[])
        {
            ArrayList arraylist1 = new ArrayList();
            obj = (short[])obj;
            j4 = obj.length;
            int j = j2;
            do
            {
                if (j >= j4)
                {
                    return arraylist1;
                }
                arraylist1.add(Short.valueOf(obj[j]));
                j++;
            } while (true);
        }
        if (obj instanceof int[])
        {
            ArrayList arraylist2 = new ArrayList();
            obj = (int[])obj;
            int k2 = obj.length;
            int k = j4;
            do
            {
                if (k >= k2)
                {
                    return arraylist2;
                }
                arraylist2.add(Integer.valueOf(obj[k]));
                k++;
            } while (true);
        }
        if (obj instanceof long[])
        {
            ArrayList arraylist3 = new ArrayList();
            obj = (long[])obj;
            int l2 = obj.length;
            int l = ((flag) ? 1 : 0);
            do
            {
                if (l >= l2)
                {
                    return arraylist3;
                }
                arraylist3.add(Long.valueOf(obj[l]));
                l++;
            } while (true);
        }
        if (obj instanceof float[])
        {
            ArrayList arraylist4 = new ArrayList();
            obj = (float[])obj;
            int i3 = obj.length;
            int i1 = ((flag1) ? 1 : 0);
            do
            {
                if (i1 >= i3)
                {
                    return arraylist4;
                }
                arraylist4.add(Float.valueOf(obj[i1]));
                i1++;
            } while (true);
        }
        if (obj instanceof double[])
        {
            ArrayList arraylist5 = new ArrayList();
            obj = (double[])obj;
            int j3 = obj.length;
            int j1 = ((flag2) ? 1 : 0);
            do
            {
                if (j1 >= j3)
                {
                    return arraylist5;
                }
                arraylist5.add(Double.valueOf(obj[j1]));
                j1++;
            } while (true);
        }
        if (obj instanceof char[])
        {
            ArrayList arraylist6 = new ArrayList();
            obj = (char[])obj;
            int k3 = obj.length;
            int k1 = ((flag3) ? 1 : 0);
            do
            {
                if (k1 >= k3)
                {
                    return arraylist6;
                }
                arraylist6.add(Character.valueOf(obj[k1]));
                k1++;
            } while (true);
        }
        if (obj instanceof boolean[])
        {
            ArrayList arraylist7 = new ArrayList();
            obj = (boolean[])obj;
            int l3 = obj.length;
            int l1 = ((flag4) ? 1 : 0);
            do
            {
                if (l1 >= l3)
                {
                    return arraylist7;
                }
                arraylist7.add(Boolean.valueOf(obj[l1]));
                l1++;
            } while (true);
        }
        if (obj instanceof String[])
        {
            ArrayList arraylist8 = new ArrayList();
            obj = (String[])obj;
            int i4 = obj.length;
            int i2 = ((flag5) ? 1 : 0);
            do
            {
                if (i2 >= i4)
                {
                    return arraylist8;
                }
                arraylist8.add(obj[i2]);
                i2++;
            } while (true);
        } else
        {
            return null;
        }
    }

    private String format(String s, ArrayList arraylist)
    {
        StringBuffer stringbuffer;
        String s1;
        int i;
        stringbuffer = new StringBuffer();
        stringbuffer.append("[\n");
        s1 = (new StringBuilder(String.valueOf(s))).append("\t").toString();
        i = 0;
        arraylist = arraylist.iterator();
_L2:
        Object obj;
        if (!arraylist.hasNext())
        {
            stringbuffer.append('\n').append(s).append(']');
            return stringbuffer.toString();
        }
        obj = arraylist.next();
        if (i > 0)
        {
            stringbuffer.append(",\n");
        }
        stringbuffer.append(s1);
        if (!(obj instanceof HashMap))
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuffer.append(format(s1, (HashMap)obj));
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (obj instanceof ArrayList)
        {
            stringbuffer.append(format(s1, (ArrayList)obj));
        } else
        if (obj instanceof String)
        {
            stringbuffer.append('"').append(obj).append('"');
        } else
        {
            stringbuffer.append(obj);
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    private String format(String s, HashMap hashmap)
    {
        StringBuffer stringbuffer;
        String s1;
        int i;
        stringbuffer = new StringBuffer();
        stringbuffer.append("{\n");
        s1 = (new StringBuilder(String.valueOf(s))).append("\t").toString();
        i = 0;
        hashmap = hashmap.entrySet().iterator();
_L2:
        Object obj;
        if (!hashmap.hasNext())
        {
            stringbuffer.append('\n').append(s).append('}');
            return stringbuffer.toString();
        }
        obj = (java.util.Map.Entry)hashmap.next();
        if (i > 0)
        {
            stringbuffer.append(",\n");
        }
        stringbuffer.append(s1).append('"').append((String)((java.util.Map.Entry) (obj)).getKey()).append("\":");
        obj = ((java.util.Map.Entry) (obj)).getValue();
        if (!(obj instanceof HashMap))
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuffer.append(format(s1, (HashMap)obj));
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (obj instanceof ArrayList)
        {
            stringbuffer.append(format(s1, (ArrayList)obj));
        } else
        if (obj instanceof String)
        {
            stringbuffer.append('"').append(obj).append('"');
        } else
        {
            stringbuffer.append(obj);
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    private ArrayList fromJson(JSONArray jsonarray)
        throws JSONException
    {
        ArrayList arraylist;
        int i;
        int j;
        arraylist = new ArrayList();
        i = 0;
        j = jsonarray.length();
_L2:
        Object obj;
        Object obj1;
        if (i >= j)
        {
            return arraylist;
        }
        obj1 = jsonarray.opt(i);
        if (!(obj1 instanceof JSONObject))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = fromJson((JSONObject)obj1);
_L3:
        arraylist.add(obj);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        obj = obj1;
        if (obj1 instanceof JSONArray)
        {
            obj = fromJson((JSONArray)obj1);
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    private HashMap fromJson(JSONObject jsonobject)
        throws JSONException
    {
        HashMap hashmap;
        Iterator iterator;
        hashmap = new HashMap();
        iterator = jsonobject.keys();
_L2:
        Object obj;
        Object obj2;
        String s;
        do
        {
            if (!iterator.hasNext())
            {
                return hashmap;
            }
            s = (String)iterator.next();
            Object obj1 = jsonobject.opt(s);
            obj = obj1;
            if (JSONObject.NULL.equals(obj1))
            {
                obj = null;
            }
        } while (obj == null);
        if (!(obj instanceof JSONObject))
        {
            break; /* Loop/switch isn't completed */
        }
        obj2 = fromJson((JSONObject)obj);
_L3:
        hashmap.put(s, obj2);
        if (true) goto _L2; else goto _L1
_L1:
        obj2 = obj;
        if (obj instanceof JSONArray)
        {
            obj2 = fromJson((JSONArray)obj);
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    private JSONArray getJSONArray(ArrayList arraylist)
        throws JSONException
    {
        JSONArray jsonarray;
        Iterator iterator;
        jsonarray = new JSONArray();
        iterator = arraylist.iterator();
_L2:
        Object obj;
        if (!iterator.hasNext())
        {
            return jsonarray;
        }
        obj = iterator.next();
        if (!(obj instanceof HashMap))
        {
            break; /* Loop/switch isn't completed */
        }
        arraylist = getJSONObject((HashMap)obj);
_L3:
        jsonarray.put(arraylist);
        if (true) goto _L2; else goto _L1
_L1:
        arraylist = ((ArrayList) (obj));
        if (obj instanceof ArrayList)
        {
            arraylist = getJSONArray((ArrayList)obj);
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    private JSONObject getJSONObject(HashMap hashmap)
        throws JSONException
    {
        JSONObject jsonobject;
        Iterator iterator;
        jsonobject = new JSONObject();
        iterator = hashmap.entrySet().iterator();
_L2:
        Object obj;
        java.util.Map.Entry entry;
        if (!iterator.hasNext())
        {
            return jsonobject;
        }
        entry = (java.util.Map.Entry)iterator.next();
        obj = entry.getValue();
        if (!(obj instanceof HashMap))
        {
            break; /* Loop/switch isn't completed */
        }
        hashmap = getJSONObject((HashMap)obj);
_L3:
        jsonobject.put((String)entry.getKey(), hashmap);
        if (true) goto _L2; else goto _L1
_L1:
        if (obj instanceof ArrayList)
        {
            hashmap = getJSONArray((ArrayList)obj);
        } else
        {
            hashmap = ((HashMap) (obj));
            if (isBasicArray(obj))
            {
                hashmap = getJSONArray(arrayToList(obj));
            }
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    private boolean isBasicArray(Object obj)
    {
        return (obj instanceof byte[]) || (obj instanceof short[]) || (obj instanceof int[]) || (obj instanceof long[]) || (obj instanceof float[]) || (obj instanceof double[]) || (obj instanceof char[]) || (obj instanceof boolean[]) || (obj instanceof String[]);
    }

    public String format(String s)
    {
        try
        {
            s = format("", fromJson(s));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return "";
        }
        return s;
    }

    public String fromHashMap(HashMap hashmap)
    {
        try
        {
            hashmap = getJSONObject(hashmap).toString();
        }
        // Misplaced declaration of an exception variable
        catch (HashMap hashmap)
        {
            hashmap.printStackTrace();
            return "";
        }
        return hashmap;
    }

    public HashMap fromJson(String s)
    {
        String s1 = s;
        try
        {
            if (!s.startsWith("["))
            {
                break MISSING_BLOCK_LABEL_44;
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return new HashMap();
        }
        s1 = s;
        if (s.endsWith("]"))
        {
            s1 = (new StringBuilder("{\"fakelist\":")).append(s).append("}").toString();
        }
        s = fromJson(new JSONObject(s1));
        return s;
    }
}
