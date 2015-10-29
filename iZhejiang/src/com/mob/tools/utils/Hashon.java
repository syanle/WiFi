// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.utils;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.mob.tools.utils:
//            Ln

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
            byte abyte0[] = (byte[])(byte[])obj;
            j2 = abyte0.length;
            do
            {
                obj = arraylist;
                if (i >= j2)
                {
                    break;
                }
                arraylist.add(Byte.valueOf(abyte0[i]));
                i++;
            } while (true);
        } else
        if (obj instanceof short[])
        {
            ArrayList arraylist1 = new ArrayList();
            short aword0[] = (short[])(short[])obj;
            j4 = aword0.length;
            int j = j2;
            do
            {
                obj = arraylist1;
                if (j >= j4)
                {
                    break;
                }
                arraylist1.add(Short.valueOf(aword0[j]));
                j++;
            } while (true);
        } else
        if (obj instanceof int[])
        {
            ArrayList arraylist2 = new ArrayList();
            int ai[] = (int[])(int[])obj;
            int k2 = ai.length;
            int k = j4;
            do
            {
                obj = arraylist2;
                if (k >= k2)
                {
                    break;
                }
                arraylist2.add(Integer.valueOf(ai[k]));
                k++;
            } while (true);
        } else
        if (obj instanceof long[])
        {
            ArrayList arraylist3 = new ArrayList();
            long al[] = (long[])(long[])obj;
            int l2 = al.length;
            int l = ((flag) ? 1 : 0);
            do
            {
                obj = arraylist3;
                if (l >= l2)
                {
                    break;
                }
                arraylist3.add(Long.valueOf(al[l]));
                l++;
            } while (true);
        } else
        if (obj instanceof float[])
        {
            ArrayList arraylist4 = new ArrayList();
            float af[] = (float[])(float[])obj;
            int i3 = af.length;
            int i1 = ((flag1) ? 1 : 0);
            do
            {
                obj = arraylist4;
                if (i1 >= i3)
                {
                    break;
                }
                arraylist4.add(Float.valueOf(af[i1]));
                i1++;
            } while (true);
        } else
        if (obj instanceof double[])
        {
            ArrayList arraylist5 = new ArrayList();
            double ad[] = (double[])(double[])obj;
            int j3 = ad.length;
            int j1 = ((flag2) ? 1 : 0);
            do
            {
                obj = arraylist5;
                if (j1 >= j3)
                {
                    break;
                }
                arraylist5.add(Double.valueOf(ad[j1]));
                j1++;
            } while (true);
        } else
        if (obj instanceof char[])
        {
            ArrayList arraylist6 = new ArrayList();
            char ac[] = (char[])(char[])obj;
            int k3 = ac.length;
            int k1 = ((flag3) ? 1 : 0);
            do
            {
                obj = arraylist6;
                if (k1 >= k3)
                {
                    break;
                }
                arraylist6.add(Character.valueOf(ac[k1]));
                k1++;
            } while (true);
        } else
        if (obj instanceof boolean[])
        {
            ArrayList arraylist7 = new ArrayList();
            boolean aflag[] = (boolean[])(boolean[])obj;
            int l3 = aflag.length;
            int l1 = ((flag4) ? 1 : 0);
            do
            {
                obj = arraylist7;
                if (l1 >= l3)
                {
                    break;
                }
                arraylist7.add(Boolean.valueOf(aflag[l1]));
                l1++;
            } while (true);
        } else
        if (obj instanceof String[])
        {
            ArrayList arraylist8 = new ArrayList();
            String as[] = (String[])(String[])obj;
            int i4 = as.length;
            int i2 = ((flag5) ? 1 : 0);
            do
            {
                obj = arraylist8;
                if (i2 >= i4)
                {
                    break;
                }
                arraylist8.add(as[i2]);
                i2++;
            } while (true);
        } else
        {
            obj = null;
        }
        return ((ArrayList) (obj));
    }

    private String format(String s, ArrayList arraylist)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("[\n");
        String s1 = (new StringBuilder()).append(s).append("\t").toString();
        arraylist = arraylist.iterator();
        int i = 0;
        while (arraylist.hasNext()) 
        {
            Object obj = arraylist.next();
            if (i > 0)
            {
                stringbuffer.append(",\n");
            }
            stringbuffer.append(s1);
            if (obj instanceof HashMap)
            {
                stringbuffer.append(format(s1, (HashMap)obj));
            } else
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
            i++;
        }
        stringbuffer.append('\n').append(s).append(']');
        return stringbuffer.toString();
    }

    private String format(String s, HashMap hashmap)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("{\n");
        String s1 = (new StringBuilder()).append(s).append("\t").toString();
        hashmap = hashmap.entrySet().iterator();
        int i = 0;
        while (hashmap.hasNext()) 
        {
            Object obj = (java.util.Map.Entry)hashmap.next();
            if (i > 0)
            {
                stringbuffer.append(",\n");
            }
            stringbuffer.append(s1).append('"').append((String)((java.util.Map.Entry) (obj)).getKey()).append("\":");
            obj = ((java.util.Map.Entry) (obj)).getValue();
            if (obj instanceof HashMap)
            {
                stringbuffer.append(format(s1, (HashMap)obj));
            } else
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
            i++;
        }
        stringbuffer.append('\n').append(s).append('}');
        return stringbuffer.toString();
    }

    private ArrayList fromJson(JSONArray jsonarray)
        throws JSONException
    {
        ArrayList arraylist = new ArrayList();
        int j = jsonarray.length();
        int i = 0;
        while (i < j) 
        {
            Object obj1 = jsonarray.opt(i);
            Object obj;
            if (obj1 instanceof JSONObject)
            {
                obj = fromJson((JSONObject)obj1);
            } else
            {
                obj = obj1;
                if (obj1 instanceof JSONArray)
                {
                    obj = fromJson((JSONArray)obj1);
                }
            }
            arraylist.add(obj);
            i++;
        }
        return arraylist;
    }

    private HashMap fromJson(JSONObject jsonobject)
        throws JSONException
    {
        HashMap hashmap = new HashMap();
        for (Iterator iterator = jsonobject.keys(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            Object obj1 = jsonobject.opt(s);
            Object obj = obj1;
            if (JSONObject.NULL.equals(obj1))
            {
                obj = null;
            }
            if (obj != null)
            {
                Object obj2;
                if (obj instanceof JSONObject)
                {
                    obj2 = fromJson((JSONObject)obj);
                } else
                {
                    obj2 = obj;
                    if (obj instanceof JSONArray)
                    {
                        obj2 = fromJson((JSONArray)obj);
                    }
                }
                hashmap.put(s, obj2);
            }
        }

        return hashmap;
    }

    private JSONArray getJSONArray(ArrayList arraylist)
        throws JSONException
    {
        JSONArray jsonarray = new JSONArray();
        Iterator iterator = arraylist.iterator();
        while (iterator.hasNext()) 
        {
            Object obj = iterator.next();
            if (obj instanceof HashMap)
            {
                arraylist = getJSONObject((HashMap)obj);
            } else
            {
                arraylist = ((ArrayList) (obj));
                if (obj instanceof ArrayList)
                {
                    arraylist = getJSONArray((ArrayList)obj);
                }
            }
            jsonarray.put(arraylist);
        }
        return jsonarray;
    }

    private JSONObject getJSONObject(HashMap hashmap)
        throws JSONException
    {
        JSONObject jsonobject = new JSONObject();
        Iterator iterator = hashmap.entrySet().iterator();
        while (iterator.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            Object obj = entry.getValue();
            if (obj instanceof HashMap)
            {
                hashmap = getJSONObject((HashMap)obj);
            } else
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
            jsonobject.put((String)entry.getKey(), hashmap);
        }
        return jsonobject;
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
            Ln.w(s);
            return "";
        }
        return s;
    }

    public String fromHashMap(HashMap hashmap)
    {
        try
        {
            hashmap = getJSONObject(hashmap);
        }
        // Misplaced declaration of an exception variable
        catch (HashMap hashmap)
        {
            Ln.w(hashmap);
            return "";
        }
        if (hashmap == null)
        {
            return "";
        }
        hashmap = hashmap.toString();
        return hashmap;
    }

    public HashMap fromJson(String s)
    {
        String s1;
        String s2;
        if (TextUtils.isEmpty(s))
        {
            return new HashMap();
        }
        s1 = s;
        s2 = s;
        if (!s.startsWith("["))
        {
            break MISSING_BLOCK_LABEL_70;
        }
        s1 = s;
        s2 = s;
        if (s.endsWith("]"))
        {
            s2 = s;
            try
            {
                s1 = (new StringBuilder()).append("{\"fakelist\":").append(s).append("}").toString();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Ln.e(s2, new Object[0]);
                Ln.w(s);
                return new HashMap();
            }
        }
        s2 = s1;
        s = fromJson(new JSONObject(s1));
        return s;
    }
}
