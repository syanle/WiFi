// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;

import java.util.Hashtable;

public class Sparta
{
    public static interface Cache
    {

        public abstract Object get(Object obj);

        public abstract Object put(Object obj, Object obj1);

        public abstract int size();
    }

    public static interface CacheFactory
    {

        public abstract Cache create();
    }

    private static class HashtableCache extends Hashtable
        implements Cache
    {

        private HashtableCache()
        {
        }

        HashtableCache(_cls1 _pcls1)
        {
            this();
        }
    }

    public static interface Internment
    {

        public abstract String intern(String s);
    }


    private static CacheFactory cacheFactory_ = new _cls2();
    private static Internment internment_ = new _cls1();

    public Sparta()
    {
    }

    public static String intern(String s)
    {
        return internment_.intern(s);
    }

    static Cache newCache()
    {
        return cacheFactory_.create();
    }

    public static void setCacheFactory(CacheFactory cachefactory)
    {
        cacheFactory_ = cachefactory;
    }

    public static void setInternment(Internment internment)
    {
        internment_ = internment;
    }


    private class _cls1
        implements Internment
    {

        private final Hashtable strings_ = new Hashtable();

        public String intern(String s)
        {
            String s1 = (String)strings_.get(s);
            if (s1 == null)
            {
                strings_.put(s, s);
                return s;
            } else
            {
                return s1;
            }
        }

        _cls1()
        {
        }
    }


    private class _cls2
        implements CacheFactory
    {

        public Cache create()
        {
            return new HashtableCache(null);
        }

        _cls2()
        {
        }
    }

}
