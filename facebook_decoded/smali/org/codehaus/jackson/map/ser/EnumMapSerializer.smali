.class public Lorg/codehaus/jackson/map/ser/EnumMapSerializer;
.super Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
.source "EnumMapSerializer.java"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase",
        "<",
        "Ljava/util/EnumMap",
        "<+",
        "Ljava/lang/Enum",
        "<*>;*>;>;",
        "Lorg/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field private a:Z

.field private b:Lorg/codehaus/jackson/map/util/EnumValues;

.field private c:Lorg/codehaus/jackson/type/JavaType;

.field private d:Lorg/codehaus/jackson/map/BeanProperty;

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


# direct methods
.method private constructor <init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/util/EnumValues;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/util/EnumValues;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/util/EnumValues;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 2
    .parameter
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
            "Lorg/codehaus/jackson/map/util/EnumValues;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 70
    const-class v1, Ljava/util/EnumMap;

    invoke-direct {p0, v1, v0}, Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 71
    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->a:Z

    .line 72
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->c:Lorg/codehaus/jackson/type/JavaType;

    .line 73
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->b:Lorg/codehaus/jackson/map/util/EnumValues;

    .line 74
    iput-object p5, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->d:Lorg/codehaus/jackson/map/BeanProperty;

    .line 76
    iput-object p6, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->e:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 77
    return-void
.end method

.method private a(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    .line 90
    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->b(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 93
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    .line 94
    return-void
.end method

.method private a(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->b:Lorg/codehaus/jackson/map/util/EnumValues;

    .line 162
    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 164
    if-nez v2, :cond_0

    .line 166
    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->d:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, v2, v4}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/map/ser/SerializerBase;

    .line 168
    check-cast v2, Lorg/codehaus/jackson/map/ser/EnumSerializer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/ser/EnumSerializer;->b()Lorg/codehaus/jackson/map/util/EnumValues;

    move-result-object v2

    .line 170
    :cond_0
    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/util/EnumValues;->a(Ljava/lang/Enum;)Lorg/codehaus/jackson/io/SerializedString;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonGenerator;->a(Lorg/codehaus/jackson/io/SerializedString;)V

    .line 171
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 172
    if-nez v1, :cond_1

    .line 173
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 176
    :cond_1
    :try_start_0
    invoke-virtual {p4, v1, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v1, p1, v0}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->a(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    return-void
.end method

.method private a(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 102
    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->b(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 105
    :cond_0
    invoke-virtual {p4, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->b(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 106
    return-void
.end method

.method private b(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->e:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->e:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->a(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 155
    :cond_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->b:Lorg/codehaus/jackson/map/util/EnumValues;

    .line 119
    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 122
    if-nez v2, :cond_2

    .line 128
    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v6, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->d:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, v2, v6}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/map/ser/SerializerBase;

    .line 130
    check-cast v2, Lorg/codehaus/jackson/map/ser/EnumSerializer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/ser/EnumSerializer;->b()Lorg/codehaus/jackson/map/util/EnumValues;

    move-result-object v2

    .line 132
    :cond_2
    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/util/EnumValues;->a(Ljava/lang/Enum;)Lorg/codehaus/jackson/io/SerializedString;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonGenerator;->a(Lorg/codehaus/jackson/io/SerializedString;)V

    .line 134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 135
    if-nez v6, :cond_3

    .line 136
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 140
    if-ne v1, v3, :cond_4

    move-object v1, v3

    move-object v3, v4

    .line 148
    :goto_1
    :try_start_0
    invoke-virtual {v4, v6, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    move-object v3, v1

    .line 152
    goto :goto_0

    .line 143
    :cond_4
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->d:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, v1, v3}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    move-object v3, v4

    .line 145
    goto :goto_1

    .line 149
    :catch_0
    move-exception v4

    .line 151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v4, p1, v0}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->a(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v3

    move-object v3, v1

    .line 154
    goto :goto_0
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
    new-instance v0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->c:Lorg/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->a:Z

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->b:Lorg/codehaus/jackson/map/util/EnumValues;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->d:Lorg/codehaus/jackson/map/BeanProperty;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/util/EnumValues;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p1, Ljava/util/EnumMap;

    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->a(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p1, Ljava/util/EnumMap;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->a(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public final a(Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .parameter

    .prologue
    .line 188
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->e:Lorg/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->c:Lorg/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->d:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->e:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 191
    :cond_0
    return-void
.end method
