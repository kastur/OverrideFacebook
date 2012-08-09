.class public abstract Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
.super Ljava/lang/Object;
.source "SettableBeanProperty.java"

# interfaces
.implements Lorg/codehaus/jackson/map/BeanProperty;


# instance fields
.field protected a:Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lorg/codehaus/jackson/map/TypeDeserializer;

.field private c:Ljava/lang/String;

.field private d:Lorg/codehaus/jackson/type/JavaType;

.field private e:Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->g:I

    .line 96
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->c:Ljava/lang/String;

    .line 101
    :goto_0
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->d:Lorg/codehaus/jackson/type/JavaType;

    .line 102
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->b:Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 104
    return-void

    .line 99
    :cond_1
    sget-object v0, Lorg/codehaus/jackson/util/InternCache;->a:Lorg/codehaus/jackson/util/InternCache;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/InternCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static a(Ljava/lang/Exception;)Ljava/io/IOException;
    .locals 3
    .parameter

    .prologue
    .line 287
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 288
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 290
    :cond_0
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 291
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 295
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 296
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 298
    :cond_2
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private g()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->b()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->f()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 245
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 246
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 247
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->e:Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 252
    :goto_0
    return-object v0

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->e:Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->a(Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->b:Lorg/codehaus/jackson/map/TypeDeserializer;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a:Lorg/codehaus/jackson/map/JsonDeserializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->b:Lorg/codehaus/jackson/map/TypeDeserializer;

    invoke-virtual {v0, p1, p2, v1}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->d:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 143
    iget v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' already had index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), trying to assign "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iput p1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->g:I

    .line 147
    return-void
.end method

.method protected final a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 268
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_2

    .line 269
    if-nez p2, :cond_0

    const-string v0, "[NULL]"

    .line 270
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problem deserializing property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 271
    const-string v2, "\' (expected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    const-string v2, "; actual type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_1

    .line 275
    const-string v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :goto_1
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v0

    .line 269
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_1
    const-string v0, " (no error message provided)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 281
    :cond_2
    invoke-static {p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Ljava/lang/Exception;)Ljava/io/IOException;

    .line 282
    return-void
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->f:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public abstract a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
.end method

.method public final a(Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Already had assigned deserializer for property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->g()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 129
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/JsonDeserializer;->a()Ljava/lang/Object;

    move-result-object v1

    .line 130
    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->e:Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    .line 131
    return-void

    .line 130
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->d:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v2, v1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;-><init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract b()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[property \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
