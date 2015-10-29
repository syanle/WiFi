// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.parser;

import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;

abstract class Token
{
    static class Character extends Token
    {

        private final String data;

        String getData()
        {
            return data;
        }

        public String toString()
        {
            return getData();
        }

        Character(String s)
        {
            type = TokenType.Character;
            data = s;
        }
    }

    static class Comment extends Token
    {

        boolean bogus;
        final StringBuilder data = new StringBuilder();

        String getData()
        {
            return data.toString();
        }

        public String toString()
        {
            return (new StringBuilder()).append("<!--").append(getData()).append("-->").toString();
        }

        Comment()
        {
            bogus = false;
            type = TokenType.Comment;
        }
    }

    static class Doctype extends Token
    {

        boolean forceQuirks;
        final StringBuilder name = new StringBuilder();
        final StringBuilder publicIdentifier = new StringBuilder();
        final StringBuilder systemIdentifier = new StringBuilder();

        String getName()
        {
            return name.toString();
        }

        String getPublicIdentifier()
        {
            return publicIdentifier.toString();
        }

        public String getSystemIdentifier()
        {
            return systemIdentifier.toString();
        }

        public boolean isForceQuirks()
        {
            return forceQuirks;
        }

        Doctype()
        {
            forceQuirks = false;
            type = TokenType.Doctype;
        }
    }

    static class EOF extends Token
    {

        EOF()
        {
            type = TokenType.EOF;
        }
    }

    static class EndTag extends Tag
    {

        public String toString()
        {
            return (new StringBuilder()).append("</").append(name()).append(">").toString();
        }

        EndTag()
        {
            type = TokenType.EndTag;
        }

        EndTag(String s)
        {
            this();
            tagName = s;
        }
    }

    static class StartTag extends Tag
    {

        public String toString()
        {
            if (attributes != null && attributes.size() > 0)
            {
                return (new StringBuilder()).append("<").append(name()).append(" ").append(attributes.toString()).append(">").toString();
            } else
            {
                return (new StringBuilder()).append("<").append(name()).append(">").toString();
            }
        }

        StartTag()
        {
            attributes = new Attributes();
            type = TokenType.StartTag;
        }

        StartTag(String s)
        {
            this();
            tagName = s;
        }

        StartTag(String s, Attributes attributes)
        {
            this();
            tagName = s;
            this.attributes = attributes;
        }
    }

    static abstract class Tag extends Token
    {

        Attributes attributes;
        private String pendingAttributeName;
        private StringBuilder pendingAttributeValue;
        boolean selfClosing;
        protected String tagName;

        private final void ensureAttributeValue()
        {
            if (pendingAttributeValue == null)
            {
                pendingAttributeValue = new StringBuilder();
            }
        }

        void appendAttributeName(char c)
        {
            appendAttributeName(String.valueOf(c));
        }

        void appendAttributeName(String s)
        {
            if (pendingAttributeName != null)
            {
                s = pendingAttributeName.concat(s);
            }
            pendingAttributeName = s;
        }

        void appendAttributeValue(char c)
        {
            ensureAttributeValue();
            pendingAttributeValue.append(c);
        }

        void appendAttributeValue(String s)
        {
            ensureAttributeValue();
            pendingAttributeValue.append(s);
        }

        void appendAttributeValue(char ac[])
        {
            ensureAttributeValue();
            pendingAttributeValue.append(ac);
        }

        void appendTagName(char c)
        {
            appendTagName(String.valueOf(c));
        }

        void appendTagName(String s)
        {
            if (tagName != null)
            {
                s = tagName.concat(s);
            }
            tagName = s;
        }

        void finaliseTag()
        {
            if (pendingAttributeName != null)
            {
                newAttribute();
            }
        }

        Attributes getAttributes()
        {
            return attributes;
        }

        boolean isSelfClosing()
        {
            return selfClosing;
        }

        String name()
        {
            boolean flag;
            if (tagName == null || tagName.length() == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Validate.isFalse(flag);
            return tagName;
        }

        Tag name(String s)
        {
            tagName = s;
            return this;
        }

        void newAttribute()
        {
            if (attributes == null)
            {
                attributes = new Attributes();
            }
            if (pendingAttributeName != null)
            {
                Attribute attribute;
                if (pendingAttributeValue == null)
                {
                    attribute = new Attribute(pendingAttributeName, "");
                } else
                {
                    attribute = new Attribute(pendingAttributeName, pendingAttributeValue.toString());
                }
                attributes.put(attribute);
            }
            pendingAttributeName = null;
            if (pendingAttributeValue != null)
            {
                pendingAttributeValue.delete(0, pendingAttributeValue.length());
            }
        }

        Tag()
        {
            selfClosing = false;
        }
    }

    static final class TokenType extends Enum
    {

        private static final TokenType $VALUES[];
        public static final TokenType Character;
        public static final TokenType Comment;
        public static final TokenType Doctype;
        public static final TokenType EOF;
        public static final TokenType EndTag;
        public static final TokenType StartTag;

        public static TokenType valueOf(String s)
        {
            return (TokenType)Enum.valueOf(org/jsoup/parser/Token$TokenType, s);
        }

        public static TokenType[] values()
        {
            return (TokenType[])$VALUES.clone();
        }

        static 
        {
            Doctype = new TokenType("Doctype", 0);
            StartTag = new TokenType("StartTag", 1);
            EndTag = new TokenType("EndTag", 2);
            Comment = new TokenType("Comment", 3);
            Character = new TokenType("Character", 4);
            EOF = new TokenType("EOF", 5);
            $VALUES = (new TokenType[] {
                Doctype, StartTag, EndTag, Comment, Character, EOF
            });
        }

        private TokenType(String s, int i)
        {
            super(s, i);
        }
    }


    TokenType type;

    private Token()
    {
    }


    Character asCharacter()
    {
        return (Character)this;
    }

    Comment asComment()
    {
        return (Comment)this;
    }

    Doctype asDoctype()
    {
        return (Doctype)this;
    }

    EndTag asEndTag()
    {
        return (EndTag)this;
    }

    StartTag asStartTag()
    {
        return (StartTag)this;
    }

    boolean isCharacter()
    {
        return type == TokenType.Character;
    }

    boolean isComment()
    {
        return type == TokenType.Comment;
    }

    boolean isDoctype()
    {
        return type == TokenType.Doctype;
    }

    boolean isEOF()
    {
        return type == TokenType.EOF;
    }

    boolean isEndTag()
    {
        return type == TokenType.EndTag;
    }

    boolean isStartTag()
    {
        return type == TokenType.StartTag;
    }

    String tokenType()
    {
        return getClass().getSimpleName();
    }
}
