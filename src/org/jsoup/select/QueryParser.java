// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.select;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.parser.TokenQueue;

// Referenced classes of package org.jsoup.select:
//            Evaluator

class QueryParser
{

    private static final String AttributeEvals[] = {
        "=", "!=", "^=", "$=", "*=", "~="
    };
    private static final Pattern NTH_AB = Pattern.compile("((\\+|-)?(\\d+)?)n(\\s*(\\+|-)?\\s*\\d+)?", 2);
    private static final Pattern NTH_B = Pattern.compile("(\\+|-)?(\\d+)");
    private static final String combinators[] = {
        ",", ">", "+", "~", " "
    };
    private List evals;
    private String query;
    private TokenQueue tq;

    private QueryParser(String s)
    {
        evals = new ArrayList();
        query = s;
        tq = new TokenQueue(s);
    }

    private void allElements()
    {
        evals.add(new Evaluator.AllElements());
    }

    private void byAttribute()
    {
        TokenQueue tokenqueue = new TokenQueue(tq.chompBalanced('[', ']'));
        String s = tokenqueue.consumeToAny(AttributeEvals);
        Validate.notEmpty(s);
        tokenqueue.consumeWhitespace();
        if (tokenqueue.isEmpty())
        {
            if (s.startsWith("^"))
            {
                evals.add(new Evaluator.AttributeStarting(s.substring(1)));
                return;
            } else
            {
                evals.add(new Evaluator.Attribute(s));
                return;
            }
        }
        if (tokenqueue.matchChomp("="))
        {
            evals.add(new Evaluator.AttributeWithValue(s, tokenqueue.remainder()));
            return;
        }
        if (tokenqueue.matchChomp("!="))
        {
            evals.add(new Evaluator.AttributeWithValueNot(s, tokenqueue.remainder()));
            return;
        }
        if (tokenqueue.matchChomp("^="))
        {
            evals.add(new Evaluator.AttributeWithValueStarting(s, tokenqueue.remainder()));
            return;
        }
        if (tokenqueue.matchChomp("$="))
        {
            evals.add(new Evaluator.AttributeWithValueEnding(s, tokenqueue.remainder()));
            return;
        }
        if (tokenqueue.matchChomp("*="))
        {
            evals.add(new Evaluator.AttributeWithValueContaining(s, tokenqueue.remainder()));
            return;
        }
        if (tokenqueue.matchChomp("~="))
        {
            evals.add(new Evaluator.AttributeWithValueMatching(s, Pattern.compile(tokenqueue.remainder())));
            return;
        } else
        {
            throw new Selector.SelectorParseException("Could not parse attribute query '%s': unexpected token at '%s'", new Object[] {
                query, tokenqueue.remainder()
            });
        }
    }

    private void byClass()
    {
        String s = tq.consumeCssIdentifier();
        Validate.notEmpty(s);
        evals.add(new Evaluator.Class(s.trim().toLowerCase()));
    }

    private void byId()
    {
        String s = tq.consumeCssIdentifier();
        Validate.notEmpty(s);
        evals.add(new Evaluator.Id(s));
    }

    private void byTag()
    {
        String s1 = tq.consumeElementSelector();
        Validate.notEmpty(s1);
        String s = s1;
        if (s1.contains("|"))
        {
            s = s1.replace("|", ":");
        }
        evals.add(new Evaluator.Tag(s.trim().toLowerCase()));
    }

    private void combinator(char c)
    {
        tq.consumeWhitespace();
        Evaluator evaluator2 = parse(consumeSubQuery());
        boolean flag1 = false;
        Object obj;
        Object obj1;
        boolean flag;
        if (evals.size() == 1)
        {
            Evaluator evaluator1 = (Evaluator)evals.get(0);
            Evaluator evaluator = evaluator1;
            obj = evaluator1;
            flag = flag1;
            obj1 = evaluator;
            if (evaluator instanceof CombiningEvaluator.Or)
            {
                obj = evaluator1;
                flag = flag1;
                obj1 = evaluator;
                if (c != ',')
                {
                    obj = ((CombiningEvaluator.Or)evaluator1).rightMostEvaluator();
                    flag = true;
                    obj1 = evaluator;
                }
            }
        } else
        {
            obj = new CombiningEvaluator.And(evals);
            obj1 = obj;
            flag = flag1;
        }
        evals.clear();
        if (c == '>')
        {
            obj = new CombiningEvaluator.And(new Evaluator[] {
                evaluator2, new StructuralEvaluator.ImmediateParent(((Evaluator) (obj)))
            });
        } else
        if (c == ' ')
        {
            obj = new CombiningEvaluator.And(new Evaluator[] {
                evaluator2, new StructuralEvaluator.Parent(((Evaluator) (obj)))
            });
        } else
        if (c == '+')
        {
            obj = new CombiningEvaluator.And(new Evaluator[] {
                evaluator2, new StructuralEvaluator.ImmediatePreviousSibling(((Evaluator) (obj)))
            });
        } else
        if (c == '~')
        {
            obj = new CombiningEvaluator.And(new Evaluator[] {
                evaluator2, new StructuralEvaluator.PreviousSibling(((Evaluator) (obj)))
            });
        } else
        if (c == ',')
        {
            if (obj instanceof CombiningEvaluator.Or)
            {
                obj = (CombiningEvaluator.Or)obj;
                ((CombiningEvaluator.Or) (obj)).add(evaluator2);
            } else
            {
                CombiningEvaluator.Or or = new CombiningEvaluator.Or();
                or.add(((Evaluator) (obj)));
                or.add(evaluator2);
                obj = or;
            }
        } else
        {
            throw new Selector.SelectorParseException((new StringBuilder()).append("Unknown combinator: ").append(c).toString(), new Object[0]);
        }
        if (flag)
        {
            ((CombiningEvaluator.Or)obj1).replaceRightMostEvaluator(((Evaluator) (obj)));
        } else
        {
            obj1 = obj;
        }
        evals.add(obj1);
    }

    private int consumeIndex()
    {
        String s = tq.chompTo(")").trim();
        Validate.isTrue(StringUtil.isNumeric(s), "Index must be numeric");
        return Integer.parseInt(s);
    }

    private String consumeSubQuery()
    {
        StringBuilder stringbuilder = new StringBuilder();
        do
        {
label0:
            {
                if (!tq.isEmpty())
                {
                    if (tq.matches("("))
                    {
                        stringbuilder.append("(").append(tq.chompBalanced('(', ')')).append(")");
                        continue;
                    }
                    if (tq.matches("["))
                    {
                        stringbuilder.append("[").append(tq.chompBalanced('[', ']')).append("]");
                        continue;
                    }
                    if (!tq.matchesAny(combinators))
                    {
                        break label0;
                    }
                }
                return stringbuilder.toString();
            }
            stringbuilder.append(tq.consume());
        } while (true);
    }

    private void contains(boolean flag)
    {
        TokenQueue tokenqueue = tq;
        String s;
        if (flag)
        {
            s = ":containsOwn";
        } else
        {
            s = ":contains";
        }
        tokenqueue.consume(s);
        s = TokenQueue.unescape(tq.chompBalanced('(', ')'));
        Validate.notEmpty(s, ":contains(text) query must not be empty");
        if (flag)
        {
            evals.add(new Evaluator.ContainsOwnText(s));
            return;
        } else
        {
            evals.add(new Evaluator.ContainsText(s));
            return;
        }
    }

    private void cssNthChild(boolean flag, boolean flag1)
    {
        int j = 0;
        int i = 1;
        String s = tq.chompTo(")").trim().toLowerCase();
        Matcher matcher = NTH_AB.matcher(s);
        Matcher matcher1 = NTH_B.matcher(s);
        if ("odd".equals(s))
        {
            i = 2;
            j = 1;
        } else
        if ("even".equals(s))
        {
            i = 2;
            j = 0;
        } else
        if (matcher.matches())
        {
            if (matcher.group(3) != null)
            {
                i = Integer.parseInt(matcher.group(1).replaceFirst("^\\+", ""));
            }
            if (matcher.group(4) != null)
            {
                j = Integer.parseInt(matcher.group(4).replaceFirst("^\\+", ""));
            }
        } else
        if (matcher1.matches())
        {
            i = 0;
            j = Integer.parseInt(matcher1.group().replaceFirst("^\\+", ""));
        } else
        {
            throw new Selector.SelectorParseException("Could not parse nth-index '%s': unexpected format", new Object[] {
                s
            });
        }
        if (flag1)
        {
            if (flag)
            {
                evals.add(new Evaluator.IsNthLastOfType(i, j));
                return;
            } else
            {
                evals.add(new Evaluator.IsNthOfType(i, j));
                return;
            }
        }
        if (flag)
        {
            evals.add(new Evaluator.IsNthLastChild(i, j));
            return;
        } else
        {
            evals.add(new Evaluator.IsNthChild(i, j));
            return;
        }
    }

    private void findElements()
    {
        if (tq.matchChomp("#"))
        {
            byId();
            return;
        }
        if (tq.matchChomp("."))
        {
            byClass();
            return;
        }
        if (tq.matchesWord())
        {
            byTag();
            return;
        }
        if (tq.matches("["))
        {
            byAttribute();
            return;
        }
        if (tq.matchChomp("*"))
        {
            allElements();
            return;
        }
        if (tq.matchChomp(":lt("))
        {
            indexLessThan();
            return;
        }
        if (tq.matchChomp(":gt("))
        {
            indexGreaterThan();
            return;
        }
        if (tq.matchChomp(":eq("))
        {
            indexEquals();
            return;
        }
        if (tq.matches(":has("))
        {
            has();
            return;
        }
        if (tq.matches(":contains("))
        {
            contains(false);
            return;
        }
        if (tq.matches(":containsOwn("))
        {
            contains(true);
            return;
        }
        if (tq.matches(":matches("))
        {
            matches(false);
            return;
        }
        if (tq.matches(":matchesOwn("))
        {
            matches(true);
            return;
        }
        if (tq.matches(":not("))
        {
            not();
            return;
        }
        if (tq.matchChomp(":nth-child("))
        {
            cssNthChild(false, false);
            return;
        }
        if (tq.matchChomp(":nth-last-child("))
        {
            cssNthChild(true, false);
            return;
        }
        if (tq.matchChomp(":nth-of-type("))
        {
            cssNthChild(false, true);
            return;
        }
        if (tq.matchChomp(":nth-last-of-type("))
        {
            cssNthChild(true, true);
            return;
        }
        if (tq.matchChomp(":first-child"))
        {
            evals.add(new Evaluator.IsFirstChild());
            return;
        }
        if (tq.matchChomp(":last-child"))
        {
            evals.add(new Evaluator.IsLastChild());
            return;
        }
        if (tq.matchChomp(":first-of-type"))
        {
            evals.add(new Evaluator.IsFirstOfType());
            return;
        }
        if (tq.matchChomp(":last-of-type"))
        {
            evals.add(new Evaluator.IsLastOfType());
            return;
        }
        if (tq.matchChomp(":only-child"))
        {
            evals.add(new Evaluator.IsOnlyChild());
            return;
        }
        if (tq.matchChomp(":only-of-type"))
        {
            evals.add(new Evaluator.IsOnlyOfType());
            return;
        }
        if (tq.matchChomp(":empty"))
        {
            evals.add(new Evaluator.IsEmpty());
            return;
        }
        if (tq.matchChomp(":root"))
        {
            evals.add(new Evaluator.IsRoot());
            return;
        } else
        {
            throw new Selector.SelectorParseException("Could not parse query '%s': unexpected token at '%s'", new Object[] {
                query, tq.remainder()
            });
        }
    }

    private void has()
    {
        tq.consume(":has");
        String s = tq.chompBalanced('(', ')');
        Validate.notEmpty(s, ":has(el) subselect must not be empty");
        evals.add(new StructuralEvaluator.Has(parse(s)));
    }

    private void indexEquals()
    {
        evals.add(new Evaluator.IndexEquals(consumeIndex()));
    }

    private void indexGreaterThan()
    {
        evals.add(new Evaluator.IndexGreaterThan(consumeIndex()));
    }

    private void indexLessThan()
    {
        evals.add(new Evaluator.IndexLessThan(consumeIndex()));
    }

    private void matches(boolean flag)
    {
        TokenQueue tokenqueue = tq;
        String s;
        if (flag)
        {
            s = ":matchesOwn";
        } else
        {
            s = ":matches";
        }
        tokenqueue.consume(s);
        s = tq.chompBalanced('(', ')');
        Validate.notEmpty(s, ":matches(regex) query must not be empty");
        if (flag)
        {
            evals.add(new Evaluator.MatchesOwn(Pattern.compile(s)));
            return;
        } else
        {
            evals.add(new Evaluator.Matches(Pattern.compile(s)));
            return;
        }
    }

    private void not()
    {
        tq.consume(":not");
        String s = tq.chompBalanced('(', ')');
        Validate.notEmpty(s, ":not(selector) subselect must not be empty");
        evals.add(new StructuralEvaluator.Not(parse(s)));
    }

    public static Evaluator parse(String s)
    {
        return (new QueryParser(s)).parse();
    }

    Evaluator parse()
    {
        tq.consumeWhitespace();
        if (tq.matchesAny(combinators))
        {
            evals.add(new StructuralEvaluator.Root());
            combinator(tq.consume());
        } else
        {
            findElements();
        }
        while (!tq.isEmpty()) 
        {
            boolean flag = tq.consumeWhitespace();
            if (tq.matchesAny(combinators))
            {
                combinator(tq.consume());
            } else
            if (flag)
            {
                combinator(' ');
            } else
            {
                findElements();
            }
        }
        if (evals.size() == 1)
        {
            return (Evaluator)evals.get(0);
        } else
        {
            return new CombiningEvaluator.And(evals);
        }
    }

}
