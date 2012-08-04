.class public Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;
.super Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;
.source "ObjectArraySerializer.java"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer",
        "<[",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field private c:Z

.field private d:Lorg/codehaus/jackson/type/JavaType;

.field private e:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V
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
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, p3, p4}, Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 73
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->d:Lorg/codehaus/jackson/type/JavaType;

    .line 74
    iput-boolean p2, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->c:Z

    .line 75
    invoke-static {}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a()Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->f:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 76
    iput-object p5, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->e:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 77
    return-void
.end method

.method private a(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->b:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 258
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->b:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 259
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->b:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->f:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 261
    :cond_0
    iget-object v0, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->a:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method private a(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->b:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 272
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->b:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 273
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->b:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->f:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 275
    :cond_0
    iget-object v0, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->a:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method private a([Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    array-length v3, p1

    .line 90
    if-nez v3, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->e:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->e:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->a([Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->a:Lorg/codehaus/jackson/map/TypeSerializer;

    if-eqz v0, :cond_3

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->b([Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 101
    :cond_3
    const/4 v2, 0x0

    .line 102
    const/4 v1, 0x0

    .line 104
    :try_start_0
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->f:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 105
    :goto_1
    if-ge v2, v3, :cond_0

    .line 106
    aget-object v1, p1, v2

    .line 107
    if-nez v1, :cond_4

    .line 108
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 105
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 112
    invoke-virtual {v4, v5}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 113
    if-nez v0, :cond_5

    .line 115
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->d:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 116
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->d:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/type/JavaType;->g(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-direct {p0, v4, v0, p3}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->a(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 121
    :cond_5
    :goto_3
    invoke-virtual {v0, v1, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 123
    :catch_0
    move-exception v0

    .line 124
    throw v0

    .line 118
    :cond_6
    :try_start_1
    invoke-direct {p0, v4, v5, p3}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->a(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_3

    .line 132
    :goto_4
    instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 133
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_4

    .line 135
    :cond_7
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_8

    .line 136
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 138
    :cond_8
    invoke-static {v0, v1, v2}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 125
    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method private a([Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    array-length v3, p1

    .line 147
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->a:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 149
    const/4 v0, 0x0

    .line 150
    const/4 v1, 0x0

    move v2, v0

    .line 152
    :goto_0
    if-ge v2, v3, :cond_4

    .line 153
    :try_start_0
    aget-object v1, p1, v2

    .line 154
    if-nez v1, :cond_0

    .line 155
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 152
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 158
    :cond_0
    if-nez v4, :cond_1

    .line 159
    invoke-virtual {p4, v1, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    throw v0

    .line 161
    :cond_1
    :try_start_1
    invoke-virtual {p4, v1, p2, p3, v4}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 166
    :catch_1
    move-exception v0

    .line 168
    :goto_2
    instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 169
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_2

    .line 171
    :cond_2
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_3

    .line 172
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 174
    :cond_3
    invoke-static {v0, v1, v2}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 175
    :cond_4
    return-void
.end method

.method private b([Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    array-length v3, p1

    .line 182
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->a:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 183
    const/4 v2, 0x0

    .line 184
    const/4 v1, 0x0

    .line 186
    :try_start_0
    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->f:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 187
    :goto_0
    if-ge v2, v3, :cond_4

    .line 188
    aget-object v1, p1, v2

    .line 189
    if-nez v1, :cond_0

    .line 190
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 187
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 194
    invoke-virtual {v5, v6}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 195
    if-nez v0, :cond_1

    .line 196
    invoke-direct {p0, v5, v6, p3}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->a(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 198
    :cond_1
    invoke-virtual {v0, v1, p2, p3, v4}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    throw v0

    .line 204
    :goto_2
    instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 205
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_2

    .line 207
    :cond_2
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_3

    .line 208
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 210
    :cond_3
    invoke-static {v0, v1, v2}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 211
    :cond_4
    return-void

    .line 202
    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->d:Lorg/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->c:Z

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->b:Lorg/codehaus/jackson/map/BeanProperty;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->e:Lorg/codehaus/jackson/map/JsonSerializer;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .parameter

    .prologue
    .line 245
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->e:Lorg/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->d:Lorg/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->b:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->e:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 248
    :cond_0
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->a([Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
