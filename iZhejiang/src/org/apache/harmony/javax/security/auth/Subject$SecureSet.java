// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.security.Principal;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

// Referenced classes of package org.apache.harmony.javax.security.auth:
//            Subject, AuthPermission, PrivateCredentialPermission

private final class elements extends AbstractSet
    implements Serializable
{
    private class SecureIterator
        implements Iterator
    {

        protected Iterator iterator;
        final Subject.SecureSet this$1;

        public boolean hasNext()
        {
            return iterator.hasNext();
        }

        public Object next()
        {
            return iterator.next();
        }

        public void remove()
        {
            Subject.access$0(this$0);
            Subject.access$1(permission);
            iterator.remove();
        }

        protected SecureIterator(Iterator iterator1)
        {
            this$1 = Subject.SecureSet.this;
            super();
            iterator = iterator1;
        }
    }


    private static final int SET_Principal = 0;
    private static final int SET_PrivCred = 1;
    private static final int SET_PubCred = 2;
    private static final long serialVersionUID = 0x6dcc328017557e27L;
    private LinkedList elements;
    private transient AuthPermission permission;
    private int setType;
    final Subject this$0;

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        objectinputstream.defaultReadObject();
        setType;
        JVM INSTR tableswitch 0 2: default 36
    //                   0 44
    //                   1 69
    //                   2 79;
           goto _L1 _L2 _L3 _L4
_L1:
        throw new IllegalArgumentException();
_L2:
        permission = Subject.access$2();
_L5:
        objectinputstream = elements.iterator();
_L6:
        if (!objectinputstream.hasNext())
        {
            return;
        }
        break MISSING_BLOCK_LABEL_89;
_L3:
        permission = Subject.access$3();
          goto _L5
_L4:
        permission = Subject.access$5();
          goto _L5
        verifyElement(objectinputstream.next());
          goto _L6
    }

    private void verifyElement(Object obj)
    {
        if (obj == null)
        {
            throw new NullPointerException();
        }
        if (permission == Subject.access$2() && !java/security/Principal.isAssignableFrom(obj.getClass()))
        {
            throw new IllegalArgumentException("auth.0B");
        } else
        {
            return;
        }
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        Iterator iterator1;
        if (permission != Subject.access$3())
        {
            break MISSING_BLOCK_LABEL_44;
        }
        iterator1 = iterator();
_L3:
        if (iterator1.hasNext()) goto _L2; else goto _L1
_L1:
        setType = 1;
_L4:
        objectoutputstream.defaultWriteObject();
        return;
_L2:
        iterator1.next();
          goto _L3
        if (permission == Subject.access$2())
        {
            setType = 0;
        } else
        {
            setType = 2;
        }
          goto _L4
    }

    public boolean add(Object obj)
    {
        verifyElement(obj);
        Subject.access$0(Subject.this);
        Subject.access$1(permission);
        if (!elements.contains(obj))
        {
            elements.add(obj);
            return true;
        } else
        {
            return false;
        }
    }

    protected final Set get(final Class c)
    {
        if (c == null)
        {
            throw new NullPointerException();
        }
        AbstractSet abstractset = new AbstractSet() {

            private LinkedList elements;
            final Subject.SecureSet this$1;
            private final Class val$c;

            public boolean add(Object obj1)
            {
                if (!c.isAssignableFrom(obj1.getClass()))
                {
                    throw new IllegalArgumentException((new StringBuilder("auth.0C ")).append(c.getName()).toString());
                }
                if (elements.contains(obj1))
                {
                    return false;
                } else
                {
                    elements.add(obj1);
                    return true;
                }
            }

            public Iterator iterator()
            {
                return elements.iterator();
            }

            public boolean retainAll(Collection collection)
            {
                if (collection == null)
                {
                    throw new NullPointerException();
                } else
                {
                    return super.retainAll(collection);
                }
            }

            public int size()
            {
                return elements.size();
            }

            
            {
                this$1 = Subject.SecureSet.this;
                c = class1;
                super();
                elements = new LinkedList();
            }
        };
        Iterator iterator1 = iterator();
        do
        {
            Object obj;
            do
            {
                if (!iterator1.hasNext())
                {
                    return abstractset;
                }
                obj = iterator1.next();
            } while (!c.isAssignableFrom(obj.getClass()));
            abstractset.add(c.cast(obj));
        } while (true);
    }

    public Iterator iterator()
    {
        if (permission == Subject.access$3())
        {
            return new SecureIterator(elements.iterator()) {

                final Subject.SecureSet this$1;

                public Object next()
                {
                    Object obj = iterator.next();
                    Subject.access$1(new PrivateCredentialPermission(obj.getClass().getName(), Subject.access$4(this$0)));
                    return obj;
                }

            
            {
                this$1 = Subject.SecureSet.this;
                super(iterator1);
            }
            };
        } else
        {
            return new SecureIterator(elements.iterator());
        }
    }

    public boolean retainAll(Collection collection)
    {
        if (collection == null)
        {
            throw new NullPointerException();
        } else
        {
            return super.retainAll(collection);
        }
    }

    public int size()
    {
        return elements.size();
    }



    protected _cls2.elements(AuthPermission authpermission)
    {
        this$0 = Subject.this;
        super();
        permission = authpermission;
        elements = new LinkedList();
    }

    protected elements(AuthPermission authpermission, Collection collection)
    {
        this(authpermission);
        boolean flag;
        if (collection.getClass().getClassLoader() == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        subject = collection.iterator();
        do
        {
            do
            {
                if (!hasNext())
                {
                    return;
                }
                authpermission = ((AuthPermission) (next()));
                verifyElement(authpermission);
            } while (!flag && elements.contains(authpermission));
            elements.add(authpermission);
        } while (true);
    }
}
