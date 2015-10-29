// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import android.util.Log;
import com.umeng.socialize.exception.SocializeException;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public class CallbackConfig
{
    public static interface ICallbackListener
    {
    }


    public static final int CALLBACK_LISTENER_FLAG_SDK = 1;
    public static final int CALLBACK_LISTENER_FLAG_SINGEL = 16;
    protected static boolean a = false;
    private static final int b = 10;
    private static final int c = 0;
    private static final int d = 15;
    private static final int e = 240;
    private static final int f = 256;
    private static final int g = 512;
    private static final int h = 768;
    private static final int i = 1024;
    private static final int j = 3840;
    private static final Map k = Collections.synchronizedMap(new WeakHashMap());
    private static final Map l = Collections.synchronizedMap(new HashMap());

    public CallbackConfig()
    {
    }

    private int a(ICallbackListener icallbacklistener)
        throws SocializeException
    {
        if (icallbacklistener instanceof com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener)
        {
            return 512;
        }
        if (icallbacklistener instanceof com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener)
        {
            return 768;
        }
        if (icallbacklistener instanceof com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener)
        {
            return 256;
        }
        if (icallbacklistener instanceof com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener)
        {
            return 1024;
        } else
        {
            throw new SocializeException("unknow params");
        }
    }

    private boolean a(int i1)
    {
        this;
        JVM INSTR monitorenter ;
        if ((i1 & 0xf0) != 16) goto _L2; else goto _L1
_L1:
        Iterator iterator = k.keySet().iterator();
_L7:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        iterator = l.keySet().iterator();
_L11:
        boolean flag = iterator.hasNext();
        if (flag) goto _L5; else goto _L2
_L2:
        flag = false;
_L9:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L4:
        ICallbackListener icallbacklistener;
        Integer ainteger[];
        icallbacklistener = (ICallbackListener)iterator.next();
        ainteger = (Integer[])k.get(icallbacklistener);
        if (ainteger == null) goto _L7; else goto _L6
_L6:
        flag = a(i1, ainteger[0].intValue());
        if (!flag) goto _L9; else goto _L8
_L8:
        k.remove(icallbacklistener);
          goto _L9
_L5:
        icallbacklistener = (ICallbackListener)iterator.next();
        ainteger = (Integer[])l.get(icallbacklistener);
        if (ainteger == null) goto _L11; else goto _L10
_L10:
        flag = a(i1, ainteger[0].intValue());
        if (!flag) goto _L9; else goto _L12
_L12:
        l.remove(icallbacklistener);
          goto _L9
        Exception exception;
        exception;
        throw exception;
    }

    private boolean a(int i1, int j1)
    {
        boolean flag;
        if ((i1 & 0xf) == (j1 & 0xf))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag && (j1 & 0xf0) == 16 && (j1 & 0xf00) == (i1 & 0xf00);
    }

    private boolean a(ICallbackListener icallbacklistener, int i1)
        throws SocializeException
    {
        if (icallbacklistener instanceof com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener)
        {
            icallbacklistener = com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;
        } else
        if (icallbacklistener instanceof com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener)
        {
            icallbacklistener = com/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;
        } else
        if (icallbacklistener instanceof com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener)
        {
            icallbacklistener = com/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;
        } else
        if (icallbacklistener instanceof com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener)
        {
            icallbacklistener = com/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
        } else
        {
            throw new SocializeException("unknow listener`s class.");
        }
        return 9 < getListener(icallbacklistener).length;
    }

    private boolean a(ICallbackListener icallbacklistener, boolean flag, int i1)
        throws SocializeException
    {
        boolean flag1 = false;
        this;
        JVM INSTR monitorenter ;
        if (icallbacklistener != null) goto _L2; else goto _L1
_L1:
        flag = flag1;
_L5:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        Map map = k;
_L3:
        int j1;
        j1 = a(icallbacklistener) | i1;
        if (a(icallbacklistener, i1))
        {
            throw new SocializeException("\u8BE5\u7C7B\u578B\u76D1\u542C\u5668\u5DF2\u7ECF\u8D85\u8FC7\u6700\u5927\u4F7F\u7528\u91CF,\u8BF7\u6CE8\u9500\u4E0D\u4F7F\u7528\u7684\u76D1\u542C\u5668\u518D\u8BD5\u3002");
        }
        break MISSING_BLOCK_LABEL_66;
        icallbacklistener;
        this;
        JVM INSTR monitorexit ;
        throw icallbacklistener;
        map = l;
          goto _L3
        a(j1);
        Integer ainteger[] = new Integer[2];
        ainteger[0] = Integer.valueOf(j1);
        if (contains(icallbacklistener) < 0)
        {
            break MISSING_BLOCK_LABEL_121;
        }
        Log.i("com.umeng.socialize", "The callback-listener has exist in the pool,resgister will update permission flag.");
        map.put(icallbacklistener, ainteger);
        flag = flag1;
        continue; /* Loop/switch isn't completed */
        flag = true;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private boolean a(Class class1, Class class2)
    {
        class1 = class1.getInterfaces();
        if (class1 == null) goto _L2; else goto _L1
_L1:
        int i1;
        int j1;
        j1 = class1.length;
        i1 = 0;
_L5:
        if (i1 < j1) goto _L3; else goto _L2
_L2:
        return false;
_L3:
        if (class1[i1] == class2)
        {
            return true;
        }
        i1++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public boolean cleanListeners()
    {
        try
        {
            k.clear();
            l.clear();
        }
        catch (Exception exception)
        {
            Log.e("com.umeng.socialize", "", exception);
            return false;
        }
        return true;
    }

    public int contains(ICallbackListener icallbacklistener)
    {
        this;
        JVM INSTR monitorenter ;
        int i1 = 0;
        if (k.containsKey(icallbacklistener))
        {
            i1 = 1;
        }
        boolean flag = l.containsKey(icallbacklistener);
        int j1;
        j1 = i1;
        if (flag)
        {
            j1 = i1 + 2;
        }
        this;
        JVM INSTR monitorexit ;
        return j1;
        icallbacklistener;
        throw icallbacklistener;
    }

    public Object[] getListener(Class class1)
        throws SocializeException
    {
        HashSet hashset;
        hashset = new HashSet();
        if (!a(class1, com/umeng/socialize/bean/CallbackConfig$ICallbackListener))
        {
            throw new SocializeException("The param is not implements ICallbackLister.");
        }
        Object obj = k.keySet().iterator();
_L3:
        if (((Iterator) (obj)).hasNext()) goto _L2; else goto _L1
_L1:
        obj = l.keySet().iterator();
_L5:
        boolean flag = ((Iterator) (obj)).hasNext();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_141;
        }
_L4:
        return hashset.toArray((Object[])Array.newInstance(class1, hashset.size()));
_L2:
        ICallbackListener icallbacklistener = (ICallbackListener)((Iterator) (obj)).next();
        if (class1.isInstance(icallbacklistener))
        {
            hashset.add(icallbacklistener);
        }
          goto _L3
        obj;
        Log.w("com.umeng.socialize", ((Throwable) (obj)));
          goto _L4
        ICallbackListener icallbacklistener1 = (ICallbackListener)((Iterator) (obj)).next();
        if (class1.isInstance(icallbacklistener1))
        {
            hashset.add(icallbacklistener1);
        }
          goto _L5
    }

    public boolean registerListener(ICallbackListener icallbacklistener)
        throws SocializeException
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = a(icallbacklistener, false, 0);
        this;
        JVM INSTR monitorexit ;
        return flag;
        icallbacklistener;
        throw icallbacklistener;
    }

    public boolean registerListener(ICallbackListener icallbacklistener, int i1)
        throws SocializeException
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = a(icallbacklistener, false, i1);
        this;
        JVM INSTR monitorexit ;
        return flag;
        icallbacklistener;
        throw icallbacklistener;
    }

    public boolean registerWeakRefListener(ICallbackListener icallbacklistener)
        throws SocializeException
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = a(icallbacklistener, true, 0);
        this;
        JVM INSTR monitorexit ;
        return flag;
        icallbacklistener;
        throw icallbacklistener;
    }

    public boolean registerWeakRefListener(ICallbackListener icallbacklistener, int i1)
        throws SocializeException
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = a(icallbacklistener, true, i1);
        this;
        JVM INSTR monitorexit ;
        return flag;
        icallbacklistener;
        throw icallbacklistener;
    }

    public transient void unregisterLisreners(ICallbackListener aicallbacklistener[])
    {
        if (aicallbacklistener == null) goto _L2; else goto _L1
_L1:
        int i1;
        int j1;
        j1 = aicallbacklistener.length;
        i1 = 0;
_L5:
        if (i1 < j1) goto _L3; else goto _L2
_L2:
        return;
_L3:
        unregisterListener(aicallbacklistener[i1]);
        i1++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public boolean unregisterListener(ICallbackListener icallbacklistener)
    {
        Integer ainteger[] = null;
        Integer ainteger1[];
        try
        {
            if (l.containsKey(icallbacklistener))
            {
                ainteger = (Integer[])l.remove(icallbacklistener);
            }
        }
        // Misplaced declaration of an exception variable
        catch (ICallbackListener icallbacklistener)
        {
            Log.w("com.umeng.socialize", icallbacklistener);
            return false;
        }
        ainteger1 = ainteger;
        if (!k.containsKey(icallbacklistener))
        {
            break MISSING_BLOCK_LABEL_60;
        }
        ainteger1 = ainteger;
        if (ainteger != null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        ainteger1 = (Integer[])k.remove(icallbacklistener);
        return ainteger1 != null;
    }

    static 
    {
        a = true;
    }
}
