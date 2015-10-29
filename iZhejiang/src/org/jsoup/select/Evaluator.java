// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.select;

import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.XmlDeclaration;

// Referenced classes of package org.jsoup.select:
//            Elements

public abstract class Evaluator
{
    public static final class AllElements extends Evaluator
    {

        public boolean matches(Element element, Element element1)
        {
            return true;
        }

        public String toString()
        {
            return "*";
        }

        public AllElements()
        {
        }
    }

    public static final class Attribute extends Evaluator
    {

        private String key;

        public boolean matches(Element element, Element element1)
        {
            return element1.hasAttr(key);
        }

        public String toString()
        {
            return String.format("[%s]", new Object[] {
                key
            });
        }

        public Attribute(String s)
        {
            key = s;
        }
    }

    public static abstract class AttributeKeyPair extends Evaluator
    {

        String key;
        String value;

        public AttributeKeyPair(String s, String s1)
        {
            Validate.notEmpty(s);
            Validate.notEmpty(s1);
            key = s.trim().toLowerCase();
            s = s1;
            if (s1.startsWith("\""))
            {
                s = s1;
                if (s1.endsWith("\""))
                {
                    s = s1.substring(1, s1.length() - 1);
                }
            }
            value = s.trim().toLowerCase();
        }
    }

    public static final class AttributeStarting extends Evaluator
    {

        private String keyPrefix;

        public boolean matches(Element element, Element element1)
        {
            for (element = element1.attributes().asList().iterator(); element.hasNext();)
            {
                if (((org.jsoup.nodes.Attribute)element.next()).getKey().startsWith(keyPrefix))
                {
                    return true;
                }
            }

            return false;
        }

        public String toString()
        {
            return String.format("[^%s]", new Object[] {
                keyPrefix
            });
        }

        public AttributeStarting(String s)
        {
            keyPrefix = s;
        }
    }

    public static final class AttributeWithValue extends AttributeKeyPair
    {

        public boolean matches(Element element, Element element1)
        {
            return element1.hasAttr(key) && value.equalsIgnoreCase(element1.attr(key));
        }

        public String toString()
        {
            return String.format("[%s=%s]", new Object[] {
                key, value
            });
        }

        public AttributeWithValue(String s, String s1)
        {
            super(s, s1);
        }
    }

    public static final class AttributeWithValueContaining extends AttributeKeyPair
    {

        public boolean matches(Element element, Element element1)
        {
            return element1.hasAttr(key) && element1.attr(key).toLowerCase().contains(value);
        }

        public String toString()
        {
            return String.format("[%s*=%s]", new Object[] {
                key, value
            });
        }

        public AttributeWithValueContaining(String s, String s1)
        {
            super(s, s1);
        }
    }

    public static final class AttributeWithValueEnding extends AttributeKeyPair
    {

        public boolean matches(Element element, Element element1)
        {
            return element1.hasAttr(key) && element1.attr(key).toLowerCase().endsWith(value);
        }

        public String toString()
        {
            return String.format("[%s$=%s]", new Object[] {
                key, value
            });
        }

        public AttributeWithValueEnding(String s, String s1)
        {
            super(s, s1);
        }
    }

    public static final class AttributeWithValueMatching extends Evaluator
    {

        String key;
        Pattern pattern;

        public boolean matches(Element element, Element element1)
        {
            return element1.hasAttr(key) && pattern.matcher(element1.attr(key)).find();
        }

        public String toString()
        {
            return String.format("[%s~=%s]", new Object[] {
                key, pattern.toString()
            });
        }

        public AttributeWithValueMatching(String s, Pattern pattern1)
        {
            key = s.trim().toLowerCase();
            pattern = pattern1;
        }
    }

    public static final class AttributeWithValueNot extends AttributeKeyPair
    {

        public boolean matches(Element element, Element element1)
        {
            return !value.equalsIgnoreCase(element1.attr(key));
        }

        public String toString()
        {
            return String.format("[%s!=%s]", new Object[] {
                key, value
            });
        }

        public AttributeWithValueNot(String s, String s1)
        {
            super(s, s1);
        }
    }

    public static final class AttributeWithValueStarting extends AttributeKeyPair
    {

        public boolean matches(Element element, Element element1)
        {
            return element1.hasAttr(key) && element1.attr(key).toLowerCase().startsWith(value);
        }

        public String toString()
        {
            return String.format("[%s^=%s]", new Object[] {
                key, value
            });
        }

        public AttributeWithValueStarting(String s, String s1)
        {
            super(s, s1);
        }
    }

    public static final class Class extends Evaluator
    {

        private String className;

        public boolean matches(Element element, Element element1)
        {
            return element1.hasClass(className);
        }

        public String toString()
        {
            return String.format(".%s", new Object[] {
                className
            });
        }

        public Class(String s)
        {
            className = s;
        }
    }

    public static final class ContainsOwnText extends Evaluator
    {

        private String searchText;

        public boolean matches(Element element, Element element1)
        {
            return element1.ownText().toLowerCase().contains(searchText);
        }

        public String toString()
        {
            return String.format(":containsOwn(%s", new Object[] {
                searchText
            });
        }

        public ContainsOwnText(String s)
        {
            searchText = s.toLowerCase();
        }
    }

    public static final class ContainsText extends Evaluator
    {

        private String searchText;

        public boolean matches(Element element, Element element1)
        {
            return element1.text().toLowerCase().contains(searchText);
        }

        public String toString()
        {
            return String.format(":contains(%s", new Object[] {
                searchText
            });
        }

        public ContainsText(String s)
        {
            searchText = s.toLowerCase();
        }
    }

    public static abstract class CssNthEvaluator extends Evaluator
    {

        protected final int a;
        protected final int b;

        protected abstract int calculatePosition(Element element, Element element1);

        protected abstract String getPseudoClass();

        public boolean matches(Element element, Element element1)
        {
            Element element2;
            boolean flag;
            flag = true;
            element2 = element1.parent();
            if (element2 != null && !(element2 instanceof Document)) goto _L2; else goto _L1
_L1:
            flag = false;
_L4:
            return flag;
_L2:
            int i;
            i = calculatePosition(element, element1);
            if (a != 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            if (i == b) goto _L4; else goto _L3
_L3:
            return false;
            if ((i - b) * a >= 0 && (i - b) % a == 0) goto _L4; else goto _L5
_L5:
            return false;
        }

        public String toString()
        {
            if (a == 0)
            {
                return String.format(":%s(%d)", new Object[] {
                    getPseudoClass(), Integer.valueOf(b)
                });
            }
            if (b == 0)
            {
                return String.format(":%s(%dn)", new Object[] {
                    getPseudoClass(), Integer.valueOf(a)
                });
            } else
            {
                return String.format(":%s(%dn%+d)", new Object[] {
                    getPseudoClass(), Integer.valueOf(a), Integer.valueOf(b)
                });
            }
        }

        public CssNthEvaluator(int i)
        {
            this(0, i);
        }

        public CssNthEvaluator(int i, int j)
        {
            a = i;
            b = j;
        }
    }

    public static final class Id extends Evaluator
    {

        private String id;

        public boolean matches(Element element, Element element1)
        {
            return id.equals(element1.id());
        }

        public String toString()
        {
            return String.format("#%s", new Object[] {
                id
            });
        }

        public Id(String s)
        {
            id = s;
        }
    }

    public static final class IndexEquals extends IndexEvaluator
    {

        public boolean matches(Element element, Element element1)
        {
            return element1.elementSiblingIndex().intValue() == index;
        }

        public String toString()
        {
            return String.format(":eq(%d)", new Object[] {
                Integer.valueOf(index)
            });
        }

        public IndexEquals(int i)
        {
            super(i);
        }
    }

    public static abstract class IndexEvaluator extends Evaluator
    {

        int index;

        public IndexEvaluator(int i)
        {
            index = i;
        }
    }

    public static final class IndexGreaterThan extends IndexEvaluator
    {

        public boolean matches(Element element, Element element1)
        {
            return element1.elementSiblingIndex().intValue() > index;
        }

        public String toString()
        {
            return String.format(":gt(%d)", new Object[] {
                Integer.valueOf(index)
            });
        }

        public IndexGreaterThan(int i)
        {
            super(i);
        }
    }

    public static final class IndexLessThan extends IndexEvaluator
    {

        public boolean matches(Element element, Element element1)
        {
            return element1.elementSiblingIndex().intValue() < index;
        }

        public String toString()
        {
            return String.format(":lt(%d)", new Object[] {
                Integer.valueOf(index)
            });
        }

        public IndexLessThan(int i)
        {
            super(i);
        }
    }

    public static final class IsEmpty extends Evaluator
    {

        public boolean matches(Element element, Element element1)
        {
            element = element1.childNodes();
            for (int i = 0; i < element.size(); i++)
            {
                element1 = (Node)element.get(i);
                if (!(element1 instanceof Comment) && !(element1 instanceof XmlDeclaration) && !(element1 instanceof DocumentType))
                {
                    return false;
                }
            }

            return true;
        }

        public String toString()
        {
            return ":empty";
        }

        public IsEmpty()
        {
        }
    }

    public static final class IsFirstChild extends Evaluator
    {

        public boolean matches(Element element, Element element1)
        {
            element = element1.parent();
            return element != null && !(element instanceof Document) && element1.elementSiblingIndex().intValue() == 0;
        }

        public String toString()
        {
            return ":first-child";
        }

        public IsFirstChild()
        {
        }
    }

    public static final class IsFirstOfType extends IsNthOfType
    {

        public String toString()
        {
            return ":first-of-type";
        }

        public IsFirstOfType()
        {
            super(0, 1);
        }
    }

    public static final class IsLastChild extends Evaluator
    {

        public boolean matches(Element element, Element element1)
        {
            element = element1.parent();
            return element != null && !(element instanceof Document) && element1.elementSiblingIndex().intValue() == element.children().size() - 1;
        }

        public String toString()
        {
            return ":last-child";
        }

        public IsLastChild()
        {
        }
    }

    public static final class IsLastOfType extends IsNthLastOfType
    {

        public String toString()
        {
            return ":last-of-type";
        }

        public IsLastOfType()
        {
            super(0, 1);
        }
    }

    public static final class IsNthChild extends CssNthEvaluator
    {

        protected int calculatePosition(Element element, Element element1)
        {
            return element1.elementSiblingIndex().intValue() + 1;
        }

        protected String getPseudoClass()
        {
            return "nth-child";
        }

        public IsNthChild(int i, int j)
        {
            super(i, j);
        }
    }

    public static final class IsNthLastChild extends CssNthEvaluator
    {

        protected int calculatePosition(Element element, Element element1)
        {
            return element1.parent().children().size() - element1.elementSiblingIndex().intValue();
        }

        protected String getPseudoClass()
        {
            return "nth-last-child";
        }

        public IsNthLastChild(int i, int j)
        {
            super(i, j);
        }
    }

    public static class IsNthLastOfType extends CssNthEvaluator
    {

        protected int calculatePosition(Element element, Element element1)
        {
            int j = 0;
            element = element1.parent().children();
            for (int i = element1.elementSiblingIndex().intValue(); i < element.size();)
            {
                int k = j;
                if (element.get(i).tag().equals(element1.tag()))
                {
                    k = j + 1;
                }
                i++;
                j = k;
            }

            return j;
        }

        protected String getPseudoClass()
        {
            return "nth-last-of-type";
        }

        public IsNthLastOfType(int i, int j)
        {
            super(i, j);
        }
    }

    public static class IsNthOfType extends CssNthEvaluator
    {

        protected int calculatePosition(Element element, Element element1)
        {
            int i = 0;
            element = element1.parent().children();
            int k = 0;
            do
            {
                int j;
label0:
                {
                    j = i;
                    if (k < element.size())
                    {
                        j = i;
                        if (element.get(k).tag().equals(element1.tag()))
                        {
                            j = i + 1;
                        }
                        if (element.get(k) != element1)
                        {
                            break label0;
                        }
                    }
                    return j;
                }
                k++;
                i = j;
            } while (true);
        }

        protected String getPseudoClass()
        {
            return "nth-of-type";
        }

        public IsNthOfType(int i, int j)
        {
            super(i, j);
        }
    }

    public static final class IsOnlyChild extends Evaluator
    {

        public boolean matches(Element element, Element element1)
        {
            element = element1.parent();
            return element != null && !(element instanceof Document) && element1.siblingElements().size() == 0;
        }

        public String toString()
        {
            return ":only-child";
        }

        public IsOnlyChild()
        {
        }
    }

    public static final class IsOnlyOfType extends Evaluator
    {

        public boolean matches(Element element, Element element1)
        {
            boolean flag = true;
            element = element1.parent();
            if (element == null || (element instanceof Document))
            {
                flag = false;
            } else
            {
                int j = 0;
                element = element.children();
                for (int i = 0; i < element.size();)
                {
                    int k = j;
                    if (element.get(i).tag().equals(element1.tag()))
                    {
                        k = j + 1;
                    }
                    i++;
                    j = k;
                }

                if (j != 1)
                {
                    return false;
                }
            }
            return flag;
        }

        public String toString()
        {
            return ":only-of-type";
        }

        public IsOnlyOfType()
        {
        }
    }

    public static final class IsRoot extends Evaluator
    {

        public boolean matches(Element element, Element element1)
        {
            boolean flag = false;
            if (element instanceof Document)
            {
                element = element.child(0);
            }
            if (element1 == element)
            {
                flag = true;
            }
            return flag;
        }

        public String toString()
        {
            return ":root";
        }

        public IsRoot()
        {
        }
    }

    public static final class Matches extends Evaluator
    {

        private Pattern pattern;

        public boolean matches(Element element, Element element1)
        {
            return pattern.matcher(element1.text()).find();
        }

        public String toString()
        {
            return String.format(":matches(%s", new Object[] {
                pattern
            });
        }

        public Matches(Pattern pattern1)
        {
            pattern = pattern1;
        }
    }

    public static final class MatchesOwn extends Evaluator
    {

        private Pattern pattern;

        public boolean matches(Element element, Element element1)
        {
            return pattern.matcher(element1.ownText()).find();
        }

        public String toString()
        {
            return String.format(":matchesOwn(%s", new Object[] {
                pattern
            });
        }

        public MatchesOwn(Pattern pattern1)
        {
            pattern = pattern1;
        }
    }

    public static final class Tag extends Evaluator
    {

        private String tagName;

        public boolean matches(Element element, Element element1)
        {
            return element1.tagName().equals(tagName);
        }

        public String toString()
        {
            return String.format("%s", new Object[] {
                tagName
            });
        }

        public Tag(String s)
        {
            tagName = s;
        }
    }


    protected Evaluator()
    {
    }

    public abstract boolean matches(Element element, Element element1);
}
