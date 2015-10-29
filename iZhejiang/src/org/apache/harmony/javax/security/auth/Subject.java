// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.security.AccessControlContext;
import java.security.AccessController;
import java.security.DomainCombiner;
import java.security.Permission;
import java.security.Principal;
import java.security.PrivilegedAction;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.security.ProtectionDomain;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

// Referenced classes of package org.apache.harmony.javax.security.auth:
//            AuthPermission, SubjectDomainCombiner, PrivateCredentialPermission

public final class Subject
    implements Serializable
{
    private final class SecureSet extends AbstractSet
        implements Serializable
    {

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
        //                       0 44
        //                       1 69
        //                       2 79;
               goto _L1 _L2 _L3 _L4
_L1:
            throw new IllegalArgumentException();
_L2:
            permission = Subject._PRINCIPALS;
_L5:
            objectinputstream = elements.iterator();
_L6:
            if (!objectinputstream.hasNext())
            {
                return;
            }
            break MISSING_BLOCK_LABEL_89;
_L3:
            permission = Subject._PRIVATE_CREDENTIALS;
              goto _L5
_L4:
            permission = Subject._PUBLIC_CREDENTIALS;
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
            if (permission == Subject._PRINCIPALS && !java/security/Principal.isAssignableFrom(obj.getClass()))
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
            if (permission != Subject._PRIVATE_CREDENTIALS)
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
            if (permission == Subject._PRINCIPALS)
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
            checkState();
            Subject.checkPermission(permission);
            if (!elements.contains(obj))
            {
                elements.add(obj);
                return true;
            } else
            {
                return false;
            }
        }

        protected final Set get(Class class1)
        {
            if (class1 == null)
            {
                throw new NullPointerException();
            }
            AbstractSet abstractset = class1. new AbstractSet() {

                private LinkedList elements;
                final SecureSet this$1;
                private final Class val$c;

                public boolean add(Object obj)
                {
                    if (!c.isAssignableFrom(obj.getClass()))
                    {
                        throw new IllegalArgumentException((new StringBuilder("auth.0C ")).append(c.getName()).toString());
                    }
                    if (elements.contains(obj))
                    {
                        return false;
                    } else
                    {
                        elements.add(obj);
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
                this$1 = final_secureset;
                c = Class.this;
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
                } while (!class1.isAssignableFrom(obj.getClass()));
                abstractset.add(class1.cast(obj));
            } while (true);
        }

        public Iterator iterator()
        {
            if (permission == Subject._PRIVATE_CREDENTIALS)
            {
                return new SecureSet.SecureIterator(elements.iterator()) {

                    final SecureSet this$1;

                    public Object next()
                    {
                        Object obj = iterator.next();
                        Subject.checkPermission(new PrivateCredentialPermission(obj.getClass().getName(), principals));
                        return obj;
                    }

            
            {
                this$1 = SecureSet.this;
                super(iterator);
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



        protected SecureSet(AuthPermission authpermission)
        {
            this$0 = Subject.this;
            super();
            permission = authpermission;
            elements = new LinkedList();
        }

        protected SecureSet(AuthPermission authpermission, Collection collection)
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

    private class SecureSet.SecureIterator
        implements Iterator
    {

        protected Iterator iterator;
        final SecureSet this$1;

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
            checkState();
            Subject.checkPermission(permission);
            iterator.remove();
        }

        protected SecureSet.SecureIterator(Iterator iterator1)
        {
            this$1 = SecureSet.this;
            super();
            iterator = iterator1;
        }
    }


    private static final AuthPermission _AS = new AuthPermission("doAs");
    private static final AuthPermission _AS_PRIVILEGED = new AuthPermission("doAsPrivileged");
    private static final AuthPermission _PRINCIPALS = new AuthPermission("modifyPrincipals");
    private static final AuthPermission _PRIVATE_CREDENTIALS = new AuthPermission("modifyPrivateCredentials");
    private static final AuthPermission _PUBLIC_CREDENTIALS = new AuthPermission("modifyPublicCredentials");
    private static final AuthPermission _READ_ONLY = new AuthPermission("setReadOnly");
    private static final AuthPermission _SUBJECT = new AuthPermission("getSubject");
    private static final long serialVersionUID = 0x8cb232930033fa68L;
    private final Set principals;
    private transient SecureSet privateCredentials;
    private transient SecureSet publicCredentials;
    private boolean readOnly;

    public Subject()
    {
        principals = new SecureSet(_PRINCIPALS);
        publicCredentials = new SecureSet(_PUBLIC_CREDENTIALS);
        privateCredentials = new SecureSet(_PRIVATE_CREDENTIALS);
        readOnly = false;
    }

    public Subject(boolean flag, Set set, Set set1, Set set2)
    {
        if (set == null || set1 == null || set2 == null)
        {
            throw new NullPointerException();
        } else
        {
            principals = new SecureSet(_PRINCIPALS, set);
            publicCredentials = new SecureSet(_PUBLIC_CREDENTIALS, set1);
            privateCredentials = new SecureSet(_PRIVATE_CREDENTIALS, set2);
            readOnly = flag;
            return;
        }
    }

    private static void checkPermission(Permission permission)
    {
        SecurityManager securitymanager = System.getSecurityManager();
        if (securitymanager != null)
        {
            securitymanager.checkPermission(permission);
        }
    }

    private void checkState()
    {
        if (readOnly)
        {
            throw new IllegalStateException("auth.0A");
        } else
        {
            return;
        }
    }

    public static Object doAs(Subject subject, PrivilegedAction privilegedaction)
    {
        checkPermission(_AS);
        return doAs_PrivilegedAction(subject, privilegedaction, AccessController.getContext());
    }

    public static Object doAs(Subject subject, PrivilegedExceptionAction privilegedexceptionaction)
        throws PrivilegedActionException
    {
        checkPermission(_AS);
        return doAs_PrivilegedExceptionAction(subject, privilegedexceptionaction, AccessController.getContext());
    }

    public static Object doAsPrivileged(Subject subject, PrivilegedAction privilegedaction, AccessControlContext accesscontrolcontext)
    {
        checkPermission(_AS_PRIVILEGED);
        if (accesscontrolcontext == null)
        {
            return doAs_PrivilegedAction(subject, privilegedaction, new AccessControlContext(new ProtectionDomain[0]));
        } else
        {
            return doAs_PrivilegedAction(subject, privilegedaction, accesscontrolcontext);
        }
    }

    public static Object doAsPrivileged(Subject subject, PrivilegedExceptionAction privilegedexceptionaction, AccessControlContext accesscontrolcontext)
        throws PrivilegedActionException
    {
        checkPermission(_AS_PRIVILEGED);
        if (accesscontrolcontext == null)
        {
            return doAs_PrivilegedExceptionAction(subject, privilegedexceptionaction, new AccessControlContext(new ProtectionDomain[0]));
        } else
        {
            return doAs_PrivilegedExceptionAction(subject, privilegedexceptionaction, accesscontrolcontext);
        }
    }

    private static Object doAs_PrivilegedAction(final Subject combiner, PrivilegedAction privilegedaction, final AccessControlContext context)
    {
        if (combiner == null)
        {
            combiner = null;
        } else
        {
            combiner = new SubjectDomainCombiner(combiner);
        }
        return AccessController.doPrivileged(privilegedaction, (AccessControlContext)AccessController.doPrivileged(new PrivilegedAction() {

            private final SubjectDomainCombiner val$combiner;
            private final AccessControlContext val$context;

            public Object run()
            {
                return new AccessControlContext(context, combiner);
            }

            
            {
                context = accesscontrolcontext;
                combiner = subjectdomaincombiner;
                super();
            }
        }));
    }

    private static Object doAs_PrivilegedExceptionAction(final Subject combiner, PrivilegedExceptionAction privilegedexceptionaction, final AccessControlContext context)
        throws PrivilegedActionException
    {
        if (combiner == null)
        {
            combiner = null;
        } else
        {
            combiner = new SubjectDomainCombiner(combiner);
        }
        return AccessController.doPrivileged(privilegedexceptionaction, (AccessControlContext)AccessController.doPrivileged(new PrivilegedAction() {

            private final SubjectDomainCombiner val$combiner;
            private final AccessControlContext val$context;

            public volatile Object run()
            {
                return run();
            }

            public AccessControlContext run()
            {
                return new AccessControlContext(context, combiner);
            }

            
            {
                context = accesscontrolcontext;
                combiner = subjectdomaincombiner;
                super();
            }
        }));
    }

    public static Subject getSubject(final AccessControlContext context)
    {
        checkPermission(_SUBJECT);
        if (context == null)
        {
            throw new NullPointerException("auth.09");
        }
        context = (DomainCombiner)AccessController.doPrivileged(new PrivilegedAction() {

            private final AccessControlContext val$context;

            public volatile Object run()
            {
                return run();
            }

            public DomainCombiner run()
            {
                return context.getDomainCombiner();
            }

            
            {
                context = accesscontrolcontext;
                super();
            }
        });
        if (context == null || !(context instanceof SubjectDomainCombiner))
        {
            return null;
        } else
        {
            return ((SubjectDomainCombiner)context).getSubject();
        }
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        objectinputstream.defaultReadObject();
        publicCredentials = new SecureSet(_PUBLIC_CREDENTIALS);
        privateCredentials = new SecureSet(_PRIVATE_CREDENTIALS);
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        objectoutputstream.defaultWriteObject();
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            obj = (Subject)obj;
            if (!principals.equals(((Subject) (obj)).principals) || !publicCredentials.equals(((Subject) (obj)).publicCredentials) || !privateCredentials.equals(((Subject) (obj)).privateCredentials))
            {
                return false;
            }
        }
        return true;
    }

    public Set getPrincipals()
    {
        return principals;
    }

    public Set getPrincipals(Class class1)
    {
        return ((SecureSet)principals).get(class1);
    }

    public Set getPrivateCredentials()
    {
        return privateCredentials;
    }

    public Set getPrivateCredentials(Class class1)
    {
        return privateCredentials.get(class1);
    }

    public Set getPublicCredentials()
    {
        return publicCredentials;
    }

    public Set getPublicCredentials(Class class1)
    {
        return publicCredentials.get(class1);
    }

    public int hashCode()
    {
        return principals.hashCode() + privateCredentials.hashCode() + publicCredentials.hashCode();
    }

    public boolean isReadOnly()
    {
        return readOnly;
    }

    public void setReadOnly()
    {
        checkPermission(_READ_ONLY);
        readOnly = true;
    }

    public String toString()
    {
        StringBuilder stringbuilder;
        Iterator iterator;
        stringbuilder = new StringBuilder("Subject:\n");
        iterator = principals.iterator();
_L7:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        iterator = publicCredentials.iterator();
_L8:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        int i;
        i = stringbuilder.length();
        iterator = privateCredentials.iterator();
_L9:
        boolean flag = iterator.hasNext();
        if (flag) goto _L6; else goto _L5
_L5:
        return stringbuilder.toString();
_L2:
        stringbuilder.append("\tPrincipal: ");
        stringbuilder.append(iterator.next());
        stringbuilder.append('\n');
          goto _L7
_L4:
        stringbuilder.append("\tPublic Credential: ");
        stringbuilder.append(iterator.next());
        stringbuilder.append('\n');
          goto _L8
_L6:
        stringbuilder.append("\tPrivate Credential: ");
        stringbuilder.append(iterator.next());
        stringbuilder.append('\n');
          goto _L9
        SecurityException securityexception;
        securityexception;
        stringbuilder.delete(i - 1, stringbuilder.length());
        stringbuilder.append("\tPrivate Credentials: no accessible information\n");
          goto _L5
    }







}
