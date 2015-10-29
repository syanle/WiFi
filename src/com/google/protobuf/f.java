// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

// Referenced classes of package com.google.protobuf:
//            g, h

class f extends AbstractMap
{
    private static class a
    {

        private static final Iterator a = new g();
        private static final Iterable b = new h();

        static Iterable a()
        {
            return b;
        }

        static Iterator b()
        {
            return a;
        }


        private a()
        {
        }
    }

    private class b
        implements Comparable, java.util.Map.Entry
    {

        final f a;
        private final Comparable b;
        private Object c;

        private boolean a(Object obj, Object obj1)
        {
            if (obj == null)
            {
                return obj1 == null;
            } else
            {
                return obj.equals(obj1);
            }
        }

        public int a(b b1)
        {
            return a().compareTo(b1.a());
        }

        public Comparable a()
        {
            return b;
        }

        public volatile int compareTo(Object obj)
        {
            return a((b)obj);
        }

        public boolean equals(Object obj)
        {
            if (obj != this)
            {
                if (!(obj instanceof java.util.Map.Entry))
                {
                    return false;
                }
                obj = (java.util.Map.Entry)obj;
                if (!a(b, ((java.util.Map.Entry) (obj)).getKey()) || !a(c, ((java.util.Map.Entry) (obj)).getValue()))
                {
                    return false;
                }
            }
            return true;
        }

        public volatile Object getKey()
        {
            return a();
        }

        public Object getValue()
        {
            return c;
        }

        public int hashCode()
        {
            int j = 0;
            int i;
            if (b == null)
            {
                i = 0;
            } else
            {
                i = b.hashCode();
            }
            if (c != null)
            {
                j = c.hashCode();
            }
            return i ^ j;
        }

        public Object setValue(Object obj)
        {
            f.a(a);
            Object obj1 = c;
            c = obj;
            return obj1;
        }

        public String toString()
        {
            return (new StringBuilder()).append(b).append("=").append(c).toString();
        }

        b(Comparable comparable, Object obj)
        {
            a = f.this;
            super();
            b = comparable;
            c = obj;
        }

        b(java.util.Map.Entry entry)
        {
            this((Comparable)entry.getKey(), entry.getValue());
        }
    }

    private class c
        implements Iterator
    {

        final f a;
        private int b;
        private boolean c;
        private Iterator d;

        private Iterator b()
        {
            if (d == null)
            {
                d = f.c(a).entrySet().iterator();
            }
            return d;
        }

        public java.util.Map.Entry a()
        {
            c = true;
            int i = b + 1;
            b = i;
            if (i < f.b(a).size())
            {
                return (java.util.Map.Entry)f.b(a).get(b);
            } else
            {
                return (java.util.Map.Entry)b().next();
            }
        }

        public boolean hasNext()
        {
            return b + 1 < f.b(a).size() || b().hasNext();
        }

        public volatile Object next()
        {
            return a();
        }

        public void remove()
        {
            if (!c)
            {
                throw new IllegalStateException("remove() was called before next()");
            }
            c = false;
            f.a(a);
            if (b < f.b(a).size())
            {
                f f1 = a;
                int i = b;
                b = i - 1;
                f.a(f1, i);
                return;
            } else
            {
                b().remove();
                return;
            }
        }

        private c()
        {
            a = f.this;
            super();
            b = -1;
        }

    }

    private class d extends AbstractSet
    {

        final f a;

        public boolean a(java.util.Map.Entry entry)
        {
            if (!contains(entry))
            {
                a.a((Comparable)entry.getKey(), entry.getValue());
                return true;
            } else
            {
                return false;
            }
        }

        public volatile boolean add(Object obj)
        {
            return a((java.util.Map.Entry)obj);
        }

        public void clear()
        {
            a.clear();
        }

        public boolean contains(Object obj)
        {
            Object obj1 = (java.util.Map.Entry)obj;
            obj = a.get(((java.util.Map.Entry) (obj1)).getKey());
            obj1 = ((java.util.Map.Entry) (obj1)).getValue();
            return obj == obj1 || obj != null && obj.equals(obj1);
        }

        public Iterator iterator()
        {
            return a. new c();
        }

        public boolean remove(Object obj)
        {
            obj = (java.util.Map.Entry)obj;
            if (contains(obj))
            {
                a.remove(((java.util.Map.Entry) (obj)).getKey());
                return true;
            } else
            {
                return false;
            }
        }

        public int size()
        {
            return a.size();
        }

        private d()
        {
            a = f.this;
            super();
        }

    }


    private final int a;
    private List b;
    private Map c;
    private boolean d;
    private volatile d e;

    private f(int i)
    {
        a = i;
        b = Collections.emptyList();
        c = Collections.emptyMap();
    }


    private int a(Comparable comparable)
    {
        boolean flag = false;
        int l = b.size() - 1;
        int i = l;
        int j = ((flag) ? 1 : 0);
        if (l >= 0)
        {
            int j1 = comparable.compareTo(((b)b.get(l)).a());
            if (j1 > 0)
            {
                return -(l + 2);
            }
            i = l;
            j = ((flag) ? 1 : 0);
            if (j1 == 0)
            {
                return l;
            }
        }
        while (j <= i) 
        {
            int k = (j + i) / 2;
            int i1 = comparable.compareTo(((b)b.get(k)).a());
            if (i1 < 0)
            {
                i = k - 1;
            } else
            if (i1 > 0)
            {
                j = k + 1;
            } else
            {
                return k;
            }
        }
        return -(j + 1);
    }

    static f a(int i)
    {
        return new f(i) {

            public void a()
            {
                if (!b())
                {
                    for (int j = 0; j < c(); j++)
                    {
                        java.util.Map.Entry entry = b(j);
                        if (((FieldSet.FieldDescriptorLite)entry.getKey()).isRepeated())
                        {
                            entry.setValue(Collections.unmodifiableList((List)entry.getValue()));
                        }
                    }

                    Iterator iterator = d().iterator();
                    do
                    {
                        if (!iterator.hasNext())
                        {
                            break;
                        }
                        java.util.Map.Entry entry1 = (java.util.Map.Entry)iterator.next();
                        if (((FieldSet.FieldDescriptorLite)entry1.getKey()).isRepeated())
                        {
                            entry1.setValue(Collections.unmodifiableList((List)entry1.getValue()));
                        }
                    } while (true);
                }
                a();
            }

            public volatile Object put(Object obj, Object obj1)
            {
                return a((FieldSet.FieldDescriptorLite)obj, obj1);
            }

        };
    }

    static Object a(f f1, int i)
    {
        return f1.c(i);
    }

    static void a(f f1)
    {
        f1.e();
    }

    static List b(f f1)
    {
        return f1.b;
    }

    private Object c(int i)
    {
        e();
        Object obj = ((b)b.remove(i)).getValue();
        if (!c.isEmpty())
        {
            Iterator iterator = f().entrySet().iterator();
            b.add(new b((java.util.Map.Entry)iterator.next()));
            iterator.remove();
        }
        return obj;
    }

    static Map c(f f1)
    {
        return f1.c;
    }

    private void e()
    {
        if (d)
        {
            throw new UnsupportedOperationException();
        } else
        {
            return;
        }
    }

    private SortedMap f()
    {
        e();
        if (c.isEmpty() && !(c instanceof TreeMap))
        {
            c = new TreeMap();
        }
        return (SortedMap)c;
    }

    private void g()
    {
        e();
        if (b.isEmpty() && !(b instanceof ArrayList))
        {
            b = new ArrayList(a);
        }
    }

    public Object a(Comparable comparable, Object obj)
    {
        e();
        int i = a(comparable);
        if (i >= 0)
        {
            return ((b)b.get(i)).setValue(obj);
        }
        g();
        i = -(i + 1);
        if (i >= a)
        {
            return f().put(comparable, obj);
        }
        if (b.size() == a)
        {
            b b1 = (b)b.remove(a - 1);
            f().put(b1.a(), b1.getValue());
        }
        b.add(i, new b(comparable, obj));
        return null;
    }

    public void a()
    {
        if (!d)
        {
            Map map;
            if (c.isEmpty())
            {
                map = Collections.emptyMap();
            } else
            {
                map = Collections.unmodifiableMap(c);
            }
            c = map;
            d = true;
        }
    }

    public java.util.Map.Entry b(int i)
    {
        return (java.util.Map.Entry)b.get(i);
    }

    public boolean b()
    {
        return d;
    }

    public int c()
    {
        return b.size();
    }

    public void clear()
    {
        e();
        if (!b.isEmpty())
        {
            b.clear();
        }
        if (!c.isEmpty())
        {
            c.clear();
        }
    }

    public boolean containsKey(Object obj)
    {
        obj = (Comparable)obj;
        return a(((Comparable) (obj))) >= 0 || c.containsKey(obj);
    }

    public Iterable d()
    {
        if (c.isEmpty())
        {
            return a.a();
        } else
        {
            return c.entrySet();
        }
    }

    public Set entrySet()
    {
        if (e == null)
        {
            e = new d();
        }
        return e;
    }

    public Object get(Object obj)
    {
        obj = (Comparable)obj;
        int i = a(((Comparable) (obj)));
        if (i >= 0)
        {
            return ((b)b.get(i)).getValue();
        } else
        {
            return c.get(obj);
        }
    }

    public volatile Object put(Object obj, Object obj1)
    {
        return a((Comparable)obj, obj1);
    }

    public Object remove(Object obj)
    {
        e();
        obj = (Comparable)obj;
        int i = a(((Comparable) (obj)));
        if (i >= 0)
        {
            return c(i);
        }
        if (c.isEmpty())
        {
            return null;
        } else
        {
            return c.remove(obj);
        }
    }

    public int size()
    {
        return b.size() + c.size();
    }

    // Unreferenced inner class com/google/protobuf/g
    static final class g
        implements Iterator
    {

        public boolean hasNext()
        {
            return false;
        }

        public Object next()
        {
            throw new NoSuchElementException();
        }

        public void remove()
        {
            throw new UnsupportedOperationException();
        }

            g()
            {
            }
    }


    // Unreferenced inner class com/google/protobuf/h
    static final class h
        implements Iterable
    {

        public Iterator iterator()
        {
            return a.b();
        }

            h()
            {
            }
    }

}
