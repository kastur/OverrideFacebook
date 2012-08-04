.class final Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;
.super Ljava/lang/Object;
.source "Creator.java"


# instance fields
.field private a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field private d:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    if-eqz p1, :cond_2

    .line 225
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->d()Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->a:Ljava/lang/reflect/Constructor;

    .line 226
    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->b:Ljava/lang/reflect/Method;

    .line 235
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->c:Ljava/util/HashMap;

    .line 238
    const/4 v0, 0x0

    array-length v2, p2

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_1
    if-ge v1, v2, :cond_4

    .line 239
    aget-object v3, p2, v1

    .line 240
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codehaus/jackson/type/JavaType;->r()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    if-nez v0, :cond_0

    .line 243
    new-array v0, v2, [Ljava/lang/Object;

    .line 245
    :cond_0
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/codehaus/jackson/map/util/ClassUtil;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 238
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 228
    :cond_2
    if-eqz p3, :cond_3

    .line 229
    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->a:Ljava/lang/reflect/Constructor;

    .line 230
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->d()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->b:Ljava/lang/reflect/Method;

    move-object p2, p4

    .line 231
    goto :goto_0

    .line 233
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Internal error: neither delegating constructor nor factory method passed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_4
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->d:[Ljava/lang/Object;

    .line 249
    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 272
    :try_start_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->a:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->a:Ljava/lang/reflect/Constructor;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->d:[Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 282
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->a()Lorg/codehaus/jackson/map/deser/PropertyValue;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    .line 283
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/deser/PropertyValue;->a(Ljava/lang/Object;)V

    .line 282
    iget-object v1, v1, Lorg/codehaus/jackson/map/deser/PropertyValue;->a:Lorg/codehaus/jackson/map/deser/PropertyValue;

    goto :goto_1

    .line 275
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->d:[Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    invoke-static {v1}, Lorg/codehaus/jackson/map/util/ClassUtil;->a(Ljava/lang/Throwable;)V

    .line 285
    :cond_1
    return-object v0
.end method

.method public final a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 264
    new-instance v0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;-><init>(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;I)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object v0
.end method
