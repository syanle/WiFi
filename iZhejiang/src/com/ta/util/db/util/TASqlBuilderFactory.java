// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db.util;

import com.ta.util.db.util.sql.TADeleteSqlBuilder;
import com.ta.util.db.util.sql.TAInsertSqlBuilder;
import com.ta.util.db.util.sql.TAQuerySqlBuilder;
import com.ta.util.db.util.sql.TASqlBuilder;
import com.ta.util.db.util.sql.TAUpdateSqlBuilder;

public class TASqlBuilderFactory
{

    public static final int DELETE = 2;
    public static final int INSERT = 0;
    public static final int SELECT = 1;
    public static final int UPDATE = 3;
    private static TASqlBuilderFactory instance;

    public TASqlBuilderFactory()
    {
    }

    public static TASqlBuilderFactory getInstance()
    {
        if (instance == null)
        {
            instance = new TASqlBuilderFactory();
        }
        return instance;
    }

    public TASqlBuilder getSqlBuilder(int i)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = null;
        i;
        JVM INSTR tableswitch 0 3: default 36
    //                   0 40
    //                   1 51
    //                   2 62
    //                   3 73;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        this;
        JVM INSTR monitorexit ;
        return ((TASqlBuilder) (obj));
_L2:
        obj = new TAInsertSqlBuilder();
        continue; /* Loop/switch isn't completed */
_L3:
        obj = new TAQuerySqlBuilder();
        continue; /* Loop/switch isn't completed */
_L4:
        obj = new TADeleteSqlBuilder();
        continue; /* Loop/switch isn't completed */
_L5:
        obj = new TAUpdateSqlBuilder();
        if (true) goto _L1; else goto _L6
_L6:
        Exception exception;
        exception;
        throw exception;
    }
}
