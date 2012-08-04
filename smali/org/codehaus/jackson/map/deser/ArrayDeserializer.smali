.class public Lorg/codehaus/jackson/map/deser/ArrayDeserializer;
.super Lorg/codehaus/jackson/map/deser/ContainerDeserializer;
.source "ArrayDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/ContainerDeserializer",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field private a:Lorg/codehaus/jackson/type/JavaType;

.field private b:Z

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lorg/codehaus/jackson/map/TypeDeserializer;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/ArrayType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/ContainerDeserializer;-><init>(Ljava/lang/Class;)V

    .line 62
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    .line 63
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/type/ArrayType;->g()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->c:Ljava/lang/Class;

    .line 64
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->c:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->b:Z

    .line 65
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->d:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 66
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->e:Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 67
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->d(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->f()Lorg/codehaus/jackson/map/util/ObjectBuffer;

    move-result-object v5

    .line 101
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->a()[Ljava/lang/Object;

    move-result-object v0

    .line 104
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->e:Lorg/codehaus/jackson/map/TypeDeserializer;

    move-object v2, v0

    move v0, v1

    .line 106
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_3

    .line 110
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_1

    .line 111
    const/4 v3, 0x0

    .line 117
    :goto_2
    array-length v4, v2

    if-lt v0, v4, :cond_5

    .line 118
    invoke-virtual {v5, v2}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move v4, v1

    .line 121
    :goto_3
    add-int/lit8 v0, v4, 0x1

    aput-object v3, v2, v4

    goto :goto_1

    .line 112
    :cond_1
    if-nez v6, :cond_2

    .line 113
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->d:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 115
    :cond_2
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->d:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v3, p1, p2, v6}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 126
    :cond_3
    iget-boolean v1, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->b:Z

    if-eqz v1, :cond_4

    .line 127
    invoke-virtual {v5, v2, v0}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 131
    :goto_4
    invoke-virtual {p2, v5}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/util/ObjectBuffer;)V

    goto :goto_0

    .line 129
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->c:Ljava/lang/Class;

    invoke-virtual {v5, v2, v0, v1}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->a([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_5
    move v4, v0

    goto :goto_3
.end method

.method private static b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-virtual {p2, p0, p1}, Lorg/codehaus/jackson/map/TypeDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private static c(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Byte;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationContext;->c()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonParser;->a(Lorg/codehaus/jackson/Base64Variant;)[B

    move-result-object v1

    .line 158
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/Byte;

    .line 159
    const/4 v0, 0x0

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_0

    .line 160
    aget-byte v4, v1, v0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return-object v2
.end method

.method private final d(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 169
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->c:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_0

    .line 175
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->c(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Byte;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 179
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 182
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 183
    const/4 v0, 0x0

    move-object v1, v0

    .line 192
    :goto_1
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->b:Z

    if-eqz v0, :cond_4

    .line 193
    new-array v0, v2, [Ljava/lang/Object;

    .line 197
    :goto_2
    const/4 v2, 0x0

    aput-object v1, v0, v2

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->e:Lorg/codehaus/jackson/map/TypeDeserializer;

    if-nez v0, :cond_3

    .line 185
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->d:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 187
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->d:Lorg/codehaus/jackson/map/JsonDeserializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->e:Lorg/codehaus/jackson/map/TypeDeserializer;

    invoke-virtual {v0, p1, p2, v1}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 195
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->c:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public final synthetic a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-static {p1, p2, p3}, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 82
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->d:Lorg/codehaus/jackson/map/JsonDeserializer;

    return-object v0
.end method
