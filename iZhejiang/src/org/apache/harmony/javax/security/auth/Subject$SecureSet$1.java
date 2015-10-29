// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth;

import java.util.Iterator;

// Referenced classes of package org.apache.harmony.javax.security.auth:
//            Subject, PrivateCredentialPermission

class cureIterator extends cureIterator
{

    final this._cls1 this$1;

    public Object next()
    {
        Object obj = iterator.next();
        Subject.access$1(new PrivateCredentialPermission(obj.getClass().getName(), Subject.access$4(cess._mth1(this._cls1.this))));
        return obj;
    }

    mission(Iterator iterator)
    {
        this$1 = this._cls1.this;
        super(cureIterator.this, iterator);
    }
}
