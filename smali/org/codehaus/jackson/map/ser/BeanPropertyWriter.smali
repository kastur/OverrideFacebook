.class public Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
.super Ljava/lang/Object;
.source "BeanPropertyWriter.java"

# interfaces
.implements Lorg/codehaus/jackson/map/BeanProperty;


# instance fields
.field private a:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

.field private b:Lorg/codehaus/jackson/map/util/Annotations;

.field private c:Lorg/codehaus/jackson/type/JavaType;

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Field;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lorg/codehaus/jackson/io/SerializedString;

.field private h:Lorg/codehaus/jackson/type/JavaType;

.field private i:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

.field private k:Z

.field private l:Ljava/lang/Object;

.field private m:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private n:Lorg/codehaus/jackson/map/TypeSerializer;

.field private o:Lorg/codehaus/jackson/type/JavaType;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/util/Annotations;Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lorg/codehaus/jackson/map/util/Annotations;",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v3, Lorg/codehaus/jackson/io/SerializedString;

    invoke-direct {v3, p3}, Lorg/codehaus/jackson/io/SerializedString;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/io/SerializedString;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    .line 169
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/io/SerializedString;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lorg/codehaus/jackson/map/util/Annotations;",
            "Lorg/codehaus/jackson/io/SerializedString;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->a:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 177
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->b:Lorg/codehaus/jackson/map/util/Annotations;

    .line 178
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->g:Lorg/codehaus/jackson/io/SerializedString;

    .line 179
    iput-object p4, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->c:Lorg/codehaus/jackson/type/JavaType;

    .line 180
    iput-object p5, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->i:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 181
    if-nez p5, :cond_0

    invoke-static {}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a()Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->j:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 182
    iput-object p6, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->n:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 183
    iput-object p7, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->h:Lorg/codehaus/jackson/type/JavaType;

    .line 184
    iput-object p8, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->d:Ljava/lang/reflect/Method;

    .line 185
    iput-object p9, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->e:Ljava/lang/reflect/Field;

    .line 186
    iput-boolean p10, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->k:Z

    .line 187
    iput-object p11, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->l:Ljava/lang/Object;

    .line 188
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;)V
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->i:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 196
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->i:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 205
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->a:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->a:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 206
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->b:Lorg/codehaus/jackson/map/util/Annotations;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->b:Lorg/codehaus/jackson/map/util/Annotations;

    .line 207
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->c:Lorg/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->c:Lorg/codehaus/jackson/type/JavaType;

    .line 208
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->d:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->d:Ljava/lang/reflect/Method;

    .line 209
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->e:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->e:Ljava/lang/reflect/Field;

    .line 211
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->f:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->f:Ljava/util/HashMap;

    .line 214
    :cond_0
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->g:Lorg/codehaus/jackson/io/SerializedString;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->g:Lorg/codehaus/jackson/io/SerializedString;

    .line 215
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->h:Lorg/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->h:Lorg/codehaus/jackson/type/JavaType;

    .line 216
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->j:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->j:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 217
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->k:Z

    iput-boolean v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->k:Z

    .line 218
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->l:Ljava/lang/Object;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->l:Ljava/lang/Object;

    .line 219
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->m:[Ljava/lang/Class;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->m:[Ljava/lang/Class;

    .line 220
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->n:Lorg/codehaus/jackson/map/TypeSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->n:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 221
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->o:Lorg/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->o:Lorg/codehaus/jackson/type/JavaType;

    .line 222
    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 466
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 469
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
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
    .line 443
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->o:Lorg/codehaus/jackson/type/JavaType;

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->o:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/type/JavaType;->g(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 445
    invoke-virtual {p1, v0, p3, p0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 450
    :goto_0
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->b:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 451
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->b:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->j:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 453
    :cond_0
    iget-object v0, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->a:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0

    .line 447
    :cond_1
    invoke-virtual {p1, p2, p3, p0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    goto :goto_0
.end method

.method private static h()V
    .locals 2

    .prologue
    .line 475
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    const-string v1, "Direct self-reference leading to cycle"

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-eq v0, v1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BeanPropertyWriter sub-class does not override \'withSerializer()\'; needs to!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method

.method public final a()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->c:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 404
    if-nez v1, :cond_1

    .line 405
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->k:Z

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->g:Lorg/codehaus/jackson/io/SerializedString;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Lorg/codehaus/jackson/io/SerializedString;)V

    .line 407
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    if-ne v1, p1, :cond_2

    .line 413
    invoke-static {}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->h()V

    .line 415
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->l:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->l:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->i:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 420
    if-nez v0, :cond_4

    .line 421
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 422
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->j:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 423
    invoke-virtual {v3, v2}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 424
    if-nez v0, :cond_4

    .line 425
    invoke-direct {p0, v3, v2, p3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->a(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 428
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->g:Lorg/codehaus/jackson/io/SerializedString;

    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/JsonGenerator;->a(Lorg/codehaus/jackson/io/SerializedString;)V

    .line 429
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->n:Lorg/codehaus/jackson/map/TypeSerializer;

    if-nez v2, :cond_5

    .line 430
    invoke-virtual {v0, v1, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 432
    :cond_5
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->n:Lorg/codehaus/jackson/map/TypeSerializer;

    invoke-virtual {v0, v1, p2, p3, v2}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/type/JavaType;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->o:Lorg/codehaus/jackson/type/JavaType;

    .line 257
    return-void
.end method

.method public final a([Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 246
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->m:[Ljava/lang/Class;

    return-void
.end method

.method public final b()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->a:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->g:Lorg/codehaus/jackson/io/SerializedString;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/SerializedString;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->i:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->h:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public final f()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public final g()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->m:[Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 482
    const-string v1, "property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->d:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 484
    const-string v1, "via method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :goto_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->i:Lorg/codehaus/jackson/map/JsonSerializer;

    if-nez v1, :cond_1

    .line 489
    const-string v1, ", no static serializer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :goto_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 486
    :cond_0
    const-string v1, "field \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 491
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", static serializer of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->i:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
