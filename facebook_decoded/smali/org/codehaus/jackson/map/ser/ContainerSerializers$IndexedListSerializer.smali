.class public Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;
.super Lorg/codehaus/jackson/map/ser/ContainerSerializers$AsArraySerializer;
.source "ContainerSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ContainerSerializers$AsArraySerializer",
        "<",
        "Ljava/util/List",
        "<*>;>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 7
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
    .line 261
    const-class v1, Ljava/util/List;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$AsArraySerializer;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 262
    return-void
.end method

.method private a(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->d:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->d:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->a(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->c:Lorg/codehaus/jackson/map/TypeSerializer;

    if-eqz v0, :cond_2

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->b(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 281
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 282
    if-eqz v3, :cond_0

    .line 285
    const/4 v1, 0x0

    .line 287
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->f:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 288
    :goto_1
    if-ge v1, v3, :cond_0

    .line 289
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 290
    if-nez v4, :cond_3

    .line 291
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 288
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 293
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 294
    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 295
    if-nez v2, :cond_4

    .line 297
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 298
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, v5}, Lorg/codehaus/jackson/type/JavaType;->g(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p3}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->a(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 302
    :goto_3
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->f:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    .line 304
    :cond_4
    invoke-virtual {v2, v4, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 307
    :catch_0
    move-exception v0

    .line 309
    invoke-static {p3, v0, p1, v1}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->a(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0

    .line 300
    :cond_5
    :try_start_1
    invoke-virtual {p0, v0, v5, p3}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->a(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3
.end method

.method private a(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 318
    if-nez v2, :cond_1

    .line 337
    :cond_0
    return-void

    .line 321
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->c:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 322
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 323
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 325
    if-nez v0, :cond_2

    .line 326
    :try_start_0
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 322
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 327
    :cond_2
    if-nez v3, :cond_3

    .line 328
    invoke-virtual {p4, v0, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 332
    :catch_0
    move-exception v0

    .line 334
    invoke-static {p3, v0, p1, v1}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->a(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_1

    .line 330
    :cond_3
    :try_start_1
    invoke-virtual {p4, v0, p2, p3, v3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private b(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 342
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 343
    if-nez v3, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    const/4 v1, 0x0

    .line 348
    :try_start_0
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->c:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 349
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->f:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 350
    :goto_1
    if-ge v1, v3, :cond_0

    .line 351
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 352
    if-nez v5, :cond_2

    .line 353
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 350
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 355
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 356
    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 357
    if-nez v2, :cond_3

    .line 359
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 360
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, v6}, Lorg/codehaus/jackson/type/JavaType;->g(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p3}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->a(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 364
    :goto_3
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->f:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    .line 366
    :cond_3
    invoke-virtual {v2, v5, p2, p3, v4}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 369
    :catch_0
    move-exception v0

    .line 371
    invoke-static {p3, v0, p1, v1}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->a(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0

    .line 362
    :cond_4
    :try_start_1
    invoke-virtual {p0, v0, v6, p3}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->a(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3
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
    .line 266
    new-instance v0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->b:Lorg/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->a:Z

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->e:Lorg/codehaus/jackson/map/BeanProperty;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->d:Lorg/codehaus/jackson/map/JsonSerializer;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;->a(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
