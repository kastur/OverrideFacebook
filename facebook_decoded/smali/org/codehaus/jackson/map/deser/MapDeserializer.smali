.class public Lorg/codehaus/jackson/map/deser/MapDeserializer;
.super Lorg/codehaus/jackson/map/deser/ContainerDeserializer;
.source "MapDeserializer.java"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/ContainerDeserializer",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lorg/codehaus/jackson/map/ResolvableDeserializer;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field private a:Lorg/codehaus/jackson/type/JavaType;

.field private b:Lorg/codehaus/jackson/map/KeyDeserializer;

.field private c:Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lorg/codehaus/jackson/map/TypeDeserializer;

.field private e:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

.field private g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    const-class v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/ContainerDeserializer;-><init>(Ljava/lang/Class;)V

    .line 78
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    .line 79
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->e:Ljava/lang/reflect/Constructor;

    .line 80
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->b:Lorg/codehaus/jackson/map/KeyDeserializer;

    .line 81
    iput-object p4, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->c:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 82
    iput-object p5, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->d:Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 83
    return-void
.end method

.method private a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 176
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    .line 177
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->d()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 179
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)V

    .line 180
    return-object p3
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 314
    move-object v0, p0

    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 319
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 322
    :cond_1
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lorg/codehaus/jackson/map/JsonMappingException;

    if-nez v1, :cond_2

    .line 323
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 325
    :cond_2
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method private b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 150
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    .line 151
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->d()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->f:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    if-eqz v0, :cond_1

    .line 154
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->c(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/Map;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 157
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->e:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_2

    .line 158
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->d()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "No default constructor found"

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 161
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->e:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)V

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->d()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;Ljava/lang/Throwable;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method private b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 214
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 215
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 217
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->b:Lorg/codehaus/jackson/map/KeyDeserializer;

    .line 218
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->c:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 219
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->d:Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 220
    :goto_0
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_5

    .line 222
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    .line 223
    if-nez v2, :cond_1

    move-object v0, v1

    .line 225
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    .line 226
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->g:Ljava/util/HashSet;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->g:Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonParser;

    .line 220
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v2, v1, p2}, Lorg/codehaus/jackson/map/KeyDeserializer;->a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 232
    :cond_2
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v1, :cond_3

    .line 233
    const/4 v1, 0x0

    .line 243
    :goto_3
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 234
    :cond_3
    if-nez v4, :cond_4

    .line 235
    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    .line 237
    :cond_4
    invoke-virtual {v3, p1, p2, v4}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    .line 245
    :cond_5
    return-void
.end method

.method private c(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/Map;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->f:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    .line 252
    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;

    move-result-object v4

    .line 254
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 255
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 256
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 258
    :cond_0
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->c:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 259
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->d:Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 260
    :goto_0
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_7

    .line 261
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 263
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->g:Ljava/util/HashSet;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->g:Ljava/util/HashSet;

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 264
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonParser;

    .line 260
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->a(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_3

    .line 271
    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 272
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->f()I

    move-result v0

    invoke-virtual {v4, v0, v1}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->a(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 276
    :try_start_0
    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->a(Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)V

    .line 305
    :goto_2
    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    move-object v0, v2

    .line 279
    goto :goto_2

    .line 287
    :cond_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    .line 288
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->b:Lorg/codehaus/jackson/map/KeyDeserializer;

    if-nez v7, :cond_4

    .line 290
    :goto_3
    sget-object v7, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v7, :cond_5

    move-object v1, v2

    .line 297
    :goto_4
    invoke-virtual {v4, v0, v1}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 288
    :cond_4
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->b:Lorg/codehaus/jackson/map/KeyDeserializer;

    invoke-virtual {v7, v0, p2}, Lorg/codehaus/jackson/map/KeyDeserializer;->a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 292
    :cond_5
    if-nez v6, :cond_6

    .line 293
    invoke-virtual {v5, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    .line 295
    :cond_6
    invoke-virtual {v5, p1, p2, v6}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    .line 302
    :cond_7
    :try_start_1
    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->a(Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 303
    :catch_1
    move-exception v0

    .line 304
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    move-object v0, v2

    .line 305
    goto :goto_2
.end method

.method private d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    check-cast p3, Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->f:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->f:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 133
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-static {p1, p2, v2, v0}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/map/deser/CreatorContainer;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->e()Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->f:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    .line 92
    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->g:Ljava/util/HashSet;

    .line 98
    return-void

    .line 96
    :cond_1
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->c:Lorg/codehaus/jackson/map/JsonDeserializer;

    return-object v0
.end method
