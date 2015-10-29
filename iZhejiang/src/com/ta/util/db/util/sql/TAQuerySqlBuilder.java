// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db.util.sql;

import android.text.TextUtils;
import com.ta.exception.TADBException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.ta.util.db.util.sql:
//            TASqlBuilder

public class TAQuerySqlBuilder extends TASqlBuilder
{

    protected Pattern sLimitPattern;

    public TAQuerySqlBuilder()
    {
        sLimitPattern = Pattern.compile("\\s*\\d+\\s*(,\\s*\\d+\\s*)?");
    }

    public String buildQueryString()
    {
        if (TextUtils.isEmpty(groupBy) && !TextUtils.isEmpty(having))
        {
            throw new IllegalArgumentException("HAVING clauses are only permitted when using a groupBy clause");
        }
        if (!TextUtils.isEmpty(limit) && !sLimitPattern.matcher(limit).matches())
        {
            throw new IllegalArgumentException((new StringBuilder("invalid LIMIT clauses:")).append(limit).toString());
        }
        StringBuilder stringbuilder = new StringBuilder(120);
        stringbuilder.append("SELECT ");
        if (distinct.booleanValue())
        {
            stringbuilder.append("DISTINCT ");
        }
        stringbuilder.append("* ");
        stringbuilder.append("FROM ");
        stringbuilder.append(tableName);
        appendClause(stringbuilder, " WHERE ", where);
        appendClause(stringbuilder, " GROUP BY ", groupBy);
        appendClause(stringbuilder, " HAVING ", having);
        appendClause(stringbuilder, " ORDER BY ", orderBy);
        appendClause(stringbuilder, " LIMIT ", limit);
        return stringbuilder.toString();
    }

    public String buildSql()
        throws TADBException, IllegalArgumentException, IllegalAccessException
    {
        return buildQueryString();
    }
}
