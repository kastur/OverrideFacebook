.class public Lcom/facebook/katana/util/jsonmirror/JMParser;
.super Ljava/lang/Object;
.source "JMParser.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "JMParser"

    sput-object v0, Lcom/facebook/katana/util/jsonmirror/JMParser;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/util/Set;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;)",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    .line 98
    invoke-static {p0, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lorg/codehaus/jackson/JsonParser;Ljava/util/Set;)Ljava/lang/Boolean;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        justification = "We\'re using this as a tristate."
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 190
    const-class v1, Lcom/facebook/katana/util/jsonmirror/types/JMBoolean;

    invoke-static {v1, p1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Ljava/util/Set;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 191
    new-instance v1, Ljava/lang/Boolean;

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v1

    .line 195
    :goto_1
    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    :cond_1
    invoke-static {v0, p1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonToken;Ljava/util/Set;)V

    .line 195
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 494
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 495
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-static {p0, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->d(Lorg/codehaus/jackson/JsonParser;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<typeClass:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class",
            "<TtypeClass;>;)TtypeClass;"
        }
    .end annotation

    .prologue
    .line 535
    invoke-static {p1}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    move-result-object v0

    .line 536
    invoke-static {p0, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Ljava/lang/Object;

    move-result-object v1

    .line 538
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->b(Z)V

    .line 540
    return-object v1

    .line 538
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lorg/codehaus/jackson/JsonToken;Lorg/codehaus/jackson/JsonParser;Ljava/util/Set;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonToken;",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne p0, v0, :cond_2

    :cond_0
    const-class v0, Lcom/facebook/katana/util/jsonmirror/types/JMLong;

    invoke-static {v0, p2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Ljava/util/Set;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    :try_start_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 127
    :cond_2
    const-class v0, Lcom/facebook/katana/util/jsonmirror/types/JMDouble;

    invoke-static {v0, p2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Ljava/util/Set;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 129
    :try_start_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 136
    :cond_3
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-eq p0, v0, :cond_4

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne p0, v0, :cond_6

    :cond_4
    const-class v0, Lcom/facebook/katana/util/jsonmirror/types/JMBoolean;

    invoke-static {v0, p2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Ljava/util/Set;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 138
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_5
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_6
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne p0, v0, :cond_7

    const-class v0, Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;

    invoke-static {v0, p2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Ljava/util/Set;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 147
    instance-of v1, v0, Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;

    invoke-static {v1}, Lcom/facebook/katana/util/Assert;->b(Z)V

    .line 148
    check-cast v0, Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;

    .line 149
    iget-object v1, v0, Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;->d:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/JsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 155
    :try_start_2
    iget-object v0, v0, Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;->c:Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 156
    if-nez v0, :cond_1

    .line 167
    :cond_7
    :goto_1
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne p0, v0, :cond_8

    const-class v0, Lcom/facebook/katana/util/jsonmirror/types/JMString;

    invoke-static {v0, p2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Ljava/util/Set;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 169
    instance-of v1, v0, Lcom/facebook/katana/util/jsonmirror/types/JMString;

    invoke-static {v1}, Lcom/facebook/katana/util/Assert;->b(Z)V

    .line 170
    check-cast v0, Lcom/facebook/katana/util/jsonmirror/types/JMString;

    .line 172
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/jsonmirror/types/JMString;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 176
    :cond_8
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonToken;Ljava/util/Set;)V

    .line 177
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static a(Lorg/codehaus/jackson/JsonToken;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected token "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonToken;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    if-eqz p1, :cond_1

    .line 49
    const-string v1, "; expecting a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :goto_1
    sget-object v1, Lcom/facebook/katana/util/jsonmirror/JMParser;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    const-string v1, "; field not defined."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static a(Lorg/codehaus/jackson/JsonToken;Ljava/util/Set;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonToken;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected token "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonToken;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v0, "; expecting one of the following: ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    .line 68
    if-ne v1, v2, :cond_1

    .line 69
    const/4 v1, 0x0

    .line 73
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 71
    :cond_1
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 75
    :cond_2
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    sget-object v0, Lcom/facebook/katana/util/jsonmirror/JMParser;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<typeClass:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class",
            "<TtypeClass;>;)",
            "Ljava/util/List",
            "<TtypeClass;>;"
        }
    .end annotation

    .prologue
    .line 552
    invoke-static {p1}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    move-result-object v0

    .line 553
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 554
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/types/JMList;

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/jsonmirror/types/JMList;-><init>(Ljava/util/Set;)V

    .line 557
    invoke-static {p0, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Ljava/lang/Object;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/facebook/katana/util/Assert;->b(Z)V

    .line 561
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 559
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static b(Lorg/codehaus/jackson/JsonParser;Ljava/util/Set;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    const-class v0, Lcom/facebook/katana/util/jsonmirror/types/JMList;

    invoke-static {v0, p1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Ljava/util/Set;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/jsonmirror/types/JMList;

    .line 210
    if-eqz v0, :cond_2

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-virtual {v0}, Lcom/facebook/katana/util/jsonmirror/types/JMList;->a()Ljava/util/Set;

    move-result-object v2

    .line 216
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 217
    :goto_0
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v3, :cond_1

    .line 219
    invoke-static {p0, v2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->d(Lorg/codehaus/jackson/JsonParser;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 232
    :goto_1
    return-object v0

    .line 227
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonToken;Ljava/util/Set;)V

    .line 230
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonParser;

    .line 232
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static c(Lorg/codehaus/jackson/JsonParser;Ljava/util/Set;)Ljava/lang/Object;
    .locals 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 247
    .line 249
    const-class v0, Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    invoke-static {v0, p1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Ljava/util/Set;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 250
    check-cast v0, Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    .line 251
    invoke-virtual {v0}, Lcom/facebook/katana/util/jsonmirror/types/JMDict;->b()Lcom/facebook/katana/util/jsonmirror/JMDictDestination;

    move-result-object v10

    .line 253
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v5, v1

    move-object v4, v6

    .line 254
    :goto_0
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v1, :cond_1b

    .line 259
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    .line 255
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    move-object v5, v2

    move-object v4, v1

    goto :goto_0

    .line 265
    :cond_0
    invoke-static {v4}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 266
    invoke-virtual {v0, v4}, Lcom/facebook/katana/util/jsonmirror/types/JMDict;->a(Ljava/lang/String;)Lcom/facebook/katana/util/Tuple;

    move-result-object v2

    .line 270
    if-eqz v2, :cond_2f

    .line 271
    iget-object v1, v2, Lcom/facebook/katana/util/Tuple;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 272
    iget-object v2, v2, Lcom/facebook/katana/util/Tuple;->b:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    move-object v7, v1

    .line 277
    :goto_2
    const-class v1, Lcom/facebook/katana/util/jsonmirror/types/JMForcedString;

    invoke-static {v1, v2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonToken;->isScalarValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    .line 289
    :goto_3
    invoke-virtual {v10, v7, v1}, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;->a_(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 290
    goto :goto_1

    .line 283
    :cond_1
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 284
    new-instance v2, Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-direct {v2}, Lcom/facebook/katana/service/method/FBJsonFactory;-><init>()V

    invoke-virtual {v2, v1}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v2

    .line 285
    invoke-virtual {v2, p0}, Lorg/codehaus/jackson/JsonGenerator;->a(Lorg/codehaus/jackson/JsonParser;)V

    .line 286
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    .line 287
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 293
    :cond_2
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v1, :cond_3

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v1, :cond_3

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v1, :cond_e

    .line 298
    :cond_3
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v1, :cond_4

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v1, :cond_a

    :cond_4
    const-class v1, Lcom/facebook/katana/util/jsonmirror/types/JMLong;

    invoke-static {v1, v2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 302
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v10, v7, v11, v12}, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v8

    .line 310
    :goto_4
    if-nez v11, :cond_6

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v1, :cond_5

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v1, :cond_6

    :cond_5
    const-class v1, Lcom/facebook/katana/util/jsonmirror/types/JMBoolean;

    invoke-static {v1, v2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 314
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v9

    move v11, v8

    .line 322
    :goto_5
    if-eqz v11, :cond_6

    .line 323
    invoke-virtual {v10, v7, v1}, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;->b(Ljava/lang/String;Z)V

    .line 327
    :cond_6
    if-nez v11, :cond_7

    const-class v1, Lcom/facebook/katana/util/jsonmirror/types/JMDouble;

    invoke-static {v1, v2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 330
    :try_start_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v10, v7, v12, v13}, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;->a(Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move v11, v8

    .line 339
    :cond_7
    :goto_6
    if-nez v11, :cond_2d

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v1, :cond_2d

    const-class v1, Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;

    invoke-static {v1, v2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Z

    move-result v1

    if-eqz v1, :cond_2d

    move-object v1, v2

    .line 343
    check-cast v1, Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;

    .line 345
    iget-object v3, v1, Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;->d:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lorg/codehaus/jackson/JsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v3

    .line 347
    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 350
    iget-object v12, v1, Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;->c:Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    invoke-static {v3, v12}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Ljava/lang/Object;

    move-result-object v3

    .line 353
    if-eqz v3, :cond_2d

    .line 354
    iget-object v12, v1, Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;->c:Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    instance-of v12, v12, Lcom/facebook/katana/util/jsonmirror/types/JMList;

    if-eqz v12, :cond_c

    move-object v1, v3

    .line 355
    check-cast v1, Ljava/util/List;

    invoke-virtual {v10, v7, v1}, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;->a(Ljava/lang/String;Ljava/util/List;)V

    move v1, v8

    .line 372
    :goto_7
    if-nez v1, :cond_8

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v3, :cond_8

    const-class v3, Lcom/facebook/katana/util/jsonmirror/types/JMString;

    invoke-static {v3, v2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v1, v2

    .line 375
    check-cast v1, Lcom/facebook/katana/util/jsonmirror/types/JMString;

    .line 377
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/katana/util/jsonmirror/types/JMString;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v7, v1}, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;->a_(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v8

    .line 382
    :cond_8
    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/facebook/katana/util/jsonmirror/types/JMDict;->c()Z

    move-result v1

    if-nez v1, :cond_9

    .line 384
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonToken;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)V

    :cond_9
    move-object v1, v4

    .line 386
    goto/16 :goto_1

    :catch_0
    move-exception v1

    :cond_a
    move v11, v9

    goto/16 :goto_4

    .line 317
    :cond_b
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    move v1, v8

    move v11, v8

    .line 319
    goto/16 :goto_5

    .line 358
    :cond_c
    iget-object v12, v1, Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;->c:Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    instance-of v12, v12, Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    if-eqz v12, :cond_d

    .line 359
    check-cast v3, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;

    invoke-virtual {v10, v7, v3}, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;->a(Ljava/lang/String;Lcom/facebook/katana/util/jsonmirror/JMDictDestination;)V

    move v1, v8

    .line 361
    goto :goto_7

    .line 362
    :cond_d
    iget-object v1, v1, Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;->c:Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    instance-of v1, v1, Lcom/facebook/katana/util/jsonmirror/types/JMSimpleDict;

    if-eqz v1, :cond_2d

    .line 364
    check-cast v3, Ljava/util/Map;

    invoke-virtual {v10, v7, v3}, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;->a(Ljava/lang/String;Ljava/util/Map;)V

    move v1, v8

    .line 366
    goto :goto_7

    .line 386
    :cond_e
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v1, :cond_f

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v1, :cond_12

    .line 387
    :cond_f
    const-class v1, Lcom/facebook/katana/util/jsonmirror/types/JMBoolean;

    invoke-static {v1, v2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 388
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v1, :cond_10

    move v1, v8

    :goto_8
    invoke-virtual {v10, v7, v1}, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;->b(Ljava/lang/String;Z)V

    move-object v1, v4

    goto/16 :goto_1

    :cond_10
    move v1, v9

    goto :goto_8

    .line 390
    :cond_11
    invoke-static {v5, v2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonToken;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)V

    move-object v1, v4

    goto/16 :goto_1

    .line 392
    :cond_12
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v1, :cond_13

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v1, :cond_1a

    .line 394
    :cond_13
    if-nez v2, :cond_15

    .line 395
    invoke-virtual {v0}, Lcom/facebook/katana/util/jsonmirror/types/JMDict;->c()Z

    move-result v1

    if-nez v1, :cond_14

    .line 396
    invoke-static {v5, v2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonToken;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)V

    .line 398
    :cond_14
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonParser;

    move-object v1, v4

    goto/16 :goto_1

    .line 400
    :cond_15
    invoke-static {p0, v2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Ljava/lang/Object;

    move-result-object v1

    .line 401
    if-eqz v1, :cond_1a

    .line 402
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v2, :cond_16

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v1, v2, :cond_17

    .line 404
    :cond_16
    instance-of v2, v1, Ljava/util/List;

    invoke-static {v2}, Lcom/facebook/katana/util/Assert;->b(Z)V

    .line 405
    check-cast v1, Ljava/util/List;

    invoke-virtual {v10, v7, v1}, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;->a(Ljava/lang/String;Ljava/util/List;)V

    move-object v1, v4

    goto/16 :goto_1

    .line 406
    :cond_17
    instance-of v2, v1, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;

    if-eqz v2, :cond_18

    .line 407
    check-cast v1, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;

    invoke-virtual {v10, v7, v1}, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;->a(Ljava/lang/String;Lcom/facebook/katana/util/jsonmirror/JMDictDestination;)V

    move-object v1, v4

    goto/16 :goto_1

    .line 408
    :cond_18
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_19

    .line 409
    check-cast v1, Ljava/util/Map;

    invoke-virtual {v10, v7, v1}, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;->a(Ljava/lang/String;Ljava/util/Map;)V

    move-object v1, v4

    goto/16 :goto_1

    .line 411
    :cond_19
    sget-object v1, Lcom/facebook/katana/util/jsonmirror/JMParser;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "got a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but don\'t know what to do with it."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    move-object v1, v4

    goto/16 :goto_1

    .line 418
    :cond_1b
    invoke-virtual {v10}, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;->a()V

    move-object v6, v10

    .line 488
    :cond_1c
    :goto_9
    return-object v6

    .line 421
    :cond_1d
    const-class v0, Lcom/facebook/katana/util/jsonmirror/types/JMSimpleDict;

    invoke-static {v0, p1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Ljava/util/Set;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 426
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 428
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v1, v0

    move-object v0, v6

    .line 429
    :goto_a
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v3, :cond_27

    .line 431
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v3, :cond_1f

    .line 432
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v0

    .line 430
    :cond_1e
    :goto_b
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_a

    .line 436
    :cond_1f
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v3, :cond_20

    .line 437
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 438
    :cond_20
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v3, :cond_21

    .line 439
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->x()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 440
    :cond_21
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v3, :cond_22

    .line 444
    :try_start_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    :catch_1
    move-exception v1

    .line 447
    :try_start_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_b

    .line 449
    :catch_2
    move-exception v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 452
    :cond_22
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v3, :cond_23

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v3, :cond_25

    .line 453
    :cond_23
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v3, :cond_24

    move v1, v8

    :goto_c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_24
    move v1, v9

    goto :goto_c

    .line 454
    :cond_25
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v3, :cond_26

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v3, :cond_1e

    .line 456
    :cond_26
    sget-object v1, Lcom/facebook/katana/util/jsonmirror/JMParser;->a:Ljava/lang/String;

    const-string v3, "Unexpected object/array in simple dictionary"

    invoke-static {v1, v3}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonParser;

    goto :goto_b

    .line 461
    :cond_27
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    goto/16 :goto_9

    .line 462
    :cond_28
    const-class v0, Lcom/facebook/katana/util/jsonmirror/types/JMList;

    invoke-static {v0, p1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Ljava/lang/Class;Ljava/util/Set;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 465
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 467
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_29

    .line 469
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_9

    .line 472
    :cond_29
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {v1, p1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonToken;Ljava/util/Set;)V

    .line 477
    :goto_d
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1c

    .line 479
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_2a

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2b

    .line 480
    :cond_2a
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonParser;

    .line 478
    :cond_2b
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_d

    .line 484
    :cond_2c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonToken;Ljava/util/Set;)V

    .line 485
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_9

    :catch_3
    move-exception v1

    goto/16 :goto_6

    :cond_2d
    move v1, v11

    goto/16 :goto_7

    :cond_2e
    move v1, v9

    goto/16 :goto_5

    :cond_2f
    move-object v2, v6

    move-object v7, v6

    goto/16 :goto_2
.end method

.method private static d(Lorg/codehaus/jackson/JsonParser;Ljava/util/Set;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonLocation;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 508
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 509
    const/4 v0, 0x0

    .line 511
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_3

    .line 514
    :cond_1
    invoke-static {v1, p0, p1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonToken;Lorg/codehaus/jackson/JsonParser;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    .line 523
    :cond_2
    :goto_0
    return-object v0

    .line 515
    :cond_3
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_4

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_5

    .line 516
    :cond_4
    invoke-static {p0, p1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/util/Set;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 517
    :cond_5
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_6

    .line 518
    invoke-static {p0, p1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->b(Lorg/codehaus/jackson/JsonParser;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 519
    :cond_6
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_2

    .line 520
    invoke-static {p0, p1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->c(Lorg/codehaus/jackson/JsonParser;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
