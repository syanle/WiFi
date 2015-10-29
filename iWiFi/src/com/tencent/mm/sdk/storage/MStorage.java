// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.storage;

import android.os.Looper;

// Referenced classes of package com.tencent.mm.sdk.storage:
//            MStorageEvent

public abstract class MStorage
{
    public static interface IOnStorageChange
    {

        public abstract void onNotifyChange(String s);
    }

    public static interface IOnStorageLoaded
    {

        public abstract void onNotifyLoaded();
    }


    private final MStorageEvent bV = new _cls1();
    private final MStorageEvent bW = new _cls2();

    public MStorage()
    {
    }

    static void a(IOnStorageChange ionstoragechange, String s)
    {
        ionstoragechange.onNotifyChange(s);
    }

    static void a(IOnStorageLoaded ionstorageloaded)
    {
        ionstorageloaded.onNotifyLoaded();
    }

    public void add(IOnStorageChange ionstoragechange)
    {
        bV.add(ionstoragechange, Looper.getMainLooper());
    }

    public void addLoadedListener(IOnStorageLoaded ionstorageloaded)
    {
        bW.add(ionstorageloaded, Looper.getMainLooper());
    }

    public void doNotify()
    {
        bV.event("*");
        bV.doNotify();
    }

    public void doNotify(String s)
    {
        bV.event(s);
        bV.doNotify();
    }

    public void lock()
    {
        bV.lock();
    }

    public void remove(IOnStorageChange ionstoragechange)
    {
        bV.remove(ionstoragechange);
    }

    public void removeLoadedListener(IOnStorageLoaded ionstorageloaded)
    {
        bW.remove(ionstorageloaded);
    }

    public void unlock()
    {
        bV.unlock();
    }

    private class _cls1 extends MStorageEvent
    {

        final MStorage bX;

        protected void processEvent(Object obj, Object obj1)
        {
            obj = (IOnStorageChange)obj;
            obj1 = (String)obj1;
            MStorage mstorage = bX;
            MStorage.a(((IOnStorageChange) (obj)), ((String) (obj1)));
        }

        _cls1()
        {
            bX = MStorage.this;
            super();
        }
    }


    private class _cls2 extends MStorageEvent
    {

        final MStorage bX;

        protected void processEvent(Object obj, Object obj1)
        {
            obj = (IOnStorageLoaded)obj;
            obj1 = bX;
            MStorage.a(((IOnStorageLoaded) (obj)));
        }

        _cls2()
        {
            bX = MStorage.this;
            super();
        }
    }

}
