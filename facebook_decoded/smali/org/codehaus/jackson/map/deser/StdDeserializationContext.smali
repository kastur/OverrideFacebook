.class public Lorg/codehaus/jackson/map/deser/StdDeserializationContext;
.super Lorg/codehaus/jackson/map/DeserializationContext;
.source "StdDeserializationContext.java"


# instance fields
.field private b:Lorg/codehaus/jackson/JsonParser;

.field private c:Lorg/codehaus/jackson/map/DeserializerProvider;

.field private d:Lorg/codehaus/jackson/map/util/ArrayBuilders;

.field private e:Lorg/codehaus/jackson/map/util/ObjectBuffer;

.field private f:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/DeserializationContext;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;)V

    .line 64
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/JsonParser;

    .line 65
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->c:Lorg/codehaus/jackson/map/DeserializerProvider;

    .line 66
    return-void
.end method

.method private c(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x1f4

    .line 300
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]...["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, -0x1f4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 303
    :cond_0
    return-object p0
.end method

.method private h()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->f:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->o()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->f:Ljava/text/DateFormat;

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->f:Ljava/text/DateFormat;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "[N/A]"

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1
    .parameter

    .prologue
    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 154
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .parameter

    .prologue
    .line 140
    :try_start_0
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->h()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not construct instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not construct Map key of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from String \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Throwable;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not construct instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/JsonParser;

    invoke-static {v0, p1, p2}, Lorg/codehaus/jackson/map/exc/UnrecognizedPropertyException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/exc/UnrecognizedPropertyException;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not resolve type id \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' into a subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/util/ObjectBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->e:Lorg/codehaus/jackson/map/util/ObjectBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->b()I

    move-result v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->e:Lorg/codehaus/jackson/map/util/ObjectBuffer;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->b()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 116
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->e:Lorg/codehaus/jackson/map/util/ObjectBuffer;

    .line 118
    :cond_1
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->d()Lorg/codehaus/jackson/map/util/LinkedNode;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_1

    .line 177
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/JsonParser;

    .line 178
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/JsonParser;

    .line 180
    :goto_0
    if-eqz v0, :cond_0

    .line 182
    :try_start_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/LinkedNode;->b()Ljava/lang/Object;

    invoke-static {}, Lorg/codehaus/jackson/map/DeserializationProblemHandler;->a()Z

    .line 183
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/LinkedNode;->a()Lorg/codehaus/jackson/map/util/LinkedNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_0
    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/JsonParser;

    .line 191
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 188
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/JsonParser;

    throw v0
.end method

.method public final b()Lorg/codehaus/jackson/map/DeserializerProvider;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->c:Lorg/codehaus/jackson/map/DeserializerProvider;

    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/JsonParser;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can not deserialize instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " out of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " token"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not construct instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from String value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not construct instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from number value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lorg/codehaus/jackson/JsonParser;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/JsonParser;

    return-object v0
.end method

.method public final f()Lorg/codehaus/jackson/map/util/ObjectBuffer;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->e:Lorg/codehaus/jackson/map/util/ObjectBuffer;

    .line 100
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/codehaus/jackson/map/util/ObjectBuffer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ObjectBuffer;-><init>()V

    .line 105
    :goto_0
    return-object v0

    .line 103
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->e:Lorg/codehaus/jackson/map/util/ObjectBuffer;

    goto :goto_0
.end method

.method public final g()Lorg/codehaus/jackson/map/util/ArrayBuilders;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->d:Lorg/codehaus/jackson/map/util/ArrayBuilders;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->d:Lorg/codehaus/jackson/map/util/ArrayBuilders;

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->d:Lorg/codehaus/jackson/map/util/ArrayBuilders;

    return-object v0
.end method
