.class public Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;
.super Ljava/lang/Object;
.source "OptionalHandlerFactory.java"


# static fields
.field public static final a:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->a:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 144
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 154
    :goto_0
    if-eqz p1, :cond_2

    .line 155
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    :cond_0
    :goto_1
    return v0

    .line 159
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->b(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 163
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 169
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 170
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    :cond_0
    :goto_1
    return v0

    .line 169
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_2
    array-length v4, v3

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 176
    invoke-direct {p0, v5, p2}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->b(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 180
    goto :goto_1
.end method

.method private c(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    :goto_1
    return v0

    .line 186
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 193
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->d(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 197
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 203
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 204
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 214
    :cond_0
    :goto_1
    return v0

    .line 203
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_2
    array-length v4, v3

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 210
    invoke-direct {p0, v5, p2}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->d(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 214
    goto :goto_1
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v1, "org.joda.time."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string v0, "org.codehaus.jackson.map.ext.JodaSerializers"

    .line 69
    :goto_0
    invoke-static {v0}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    if-nez v0, :cond_4

    move-object v0, v2

    .line 90
    :goto_1
    return-object v0

    .line 60
    :cond_0
    const-string v1, "javax.xml."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "javax.xml."

    invoke-direct {p0, v3, v0}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->c(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    :cond_1
    const-string v0, "org.codehaus.jackson.map.ext.CoreXMLSerializers"

    goto :goto_0

    .line 63
    :cond_2
    const-string v0, "org.w3c.dom.Node"

    invoke-direct {p0, v3, v0}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    const-string v0, "org.codehaus.jackson.map.ext.DOMSerializer"

    invoke-static {v0}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 66
    goto :goto_1

    .line 74
    :cond_4
    check-cast v0, Lorg/codehaus/jackson/map/util/Provider;

    .line 75
    invoke-interface {v0}, Lorg/codehaus/jackson/map/util/Provider;->a()Ljava/util/Collection;

    move-result-object v1

    .line 78
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_5

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    goto :goto_1

    .line 84
    :cond_6
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    goto :goto_1

    :cond_8
    move-object v0, v2

    .line 90
    goto :goto_1
.end method

.method public final b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v3, "org.joda.time."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    const-string v0, "org.codehaus.jackson.map.ext.JodaDeserializers"

    .line 111
    :goto_0
    invoke-static {v0}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    if-nez v0, :cond_5

    move-object v0, v1

    .line 132
    :goto_1
    return-object v0

    .line 101
    :cond_0
    const-string v3, "javax.xml."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "javax.xml."

    invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->c(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    :cond_1
    const-string v0, "org.codehaus.jackson.map.ext.CoreXMLDeserializers"

    goto :goto_0

    .line 104
    :cond_2
    const-string v0, "org.w3c.dom.Node"

    invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    const-string v0, "org.codehaus.jackson.map.ext.DOMDeserializer$DocumentDeserializer"

    invoke-static {v0}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    goto :goto_1

    .line 106
    :cond_3
    const-string v0, "org.w3c.dom.Node"

    invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    const-string v0, "org.codehaus.jackson.map.ext.DOMDeserializer$NodeDeserializer"

    invoke-static {v0}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 109
    goto :goto_1

    .line 116
    :cond_5
    check-cast v0, Lorg/codehaus/jackson/map/util/Provider;

    .line 117
    invoke-interface {v0}, Lorg/codehaus/jackson/map/util/Provider;->a()Ljava/util/Collection;

    move-result-object v3

    .line 120
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/StdDeserializer;

    .line 121
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/StdDeserializer;->c()Ljava/lang/Class;

    move-result-object v5

    if-ne v2, v5, :cond_6

    goto :goto_1

    .line 126
    :cond_7
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/StdDeserializer;

    .line 127
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/StdDeserializer;->c()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_1

    :cond_9
    move-object v0, v1

    .line 132
    goto :goto_1
.end method
