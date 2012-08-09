.class public Lorg/codehaus/jackson/map/ser/BeanSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "BeanSerializer.java"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableSerializer;
.implements Lorg/codehaus/jackson/schema/SchemaAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/codehaus/jackson/map/ResolvableSerializer;",
        "Lorg/codehaus/jackson/schema/SchemaAware;"
    }
.end annotation


# static fields
.field private static a:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;


# instance fields
.field private b:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

.field private c:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

.field private d:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

.field private e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    sput-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->a:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "Lorg/codehaus/jackson/map/ser/AnyGetterWriter;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 91
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->b:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 92
    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->c:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 93
    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->d:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    .line 94
    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->e:Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 78
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->b:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 79
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->c:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 80
    iput-object p4, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->d:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    .line 81
    iput-object p5, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->e:Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public static a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ser/BeanSerializer;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ser/BeanSerializer;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 120
    new-instance v0, Lorg/codehaus/jackson/map/ser/BeanSerializer;

    sget-object v2, Lorg/codehaus/jackson/map/ser/BeanSerializer;->a:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/BeanSerializer;-><init>(Ljava/lang/Class;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V

    return-object v0
.end method

.method private b(Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;
    .locals 4
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->e:Ljava/lang/Object;

    .line 249
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializerProvider;->b()Lorg/codehaus/jackson/map/ser/FilterProvider;

    move-result-object v1

    .line 251
    if-nez v1, :cond_0

    .line 252
    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can not resolve BeanPropertyFilter with id \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'; no FilterProvider configured"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_0
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/ser/FilterProvider;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;

    move-result-object v1

    .line 256
    if-nez v1, :cond_1

    .line 257
    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No filter configured with id \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_1
    return-object v1
.end method

.method private b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->c:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lorg/codehaus/jackson/map/SerializerProvider;->a()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->c:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 170
    :goto_0
    const/4 v2, 0x0

    .line 172
    :try_start_0
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 173
    aget-object v3, v0, v2

    .line 174
    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {v3, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 168
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->b:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    goto :goto_0

    .line 178
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->d:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    if-eqz v1, :cond_3

    .line 179
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->d:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-virtual {v1, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    :cond_3
    :goto_2
    return-void

    .line 181
    :catch_0
    move-exception v1

    .line 182
    array-length v3, v0

    if-ne v2, v3, :cond_4

    const-string v0, "[anySetter]"

    .line 183
    :goto_3
    invoke-static {p3, v1, p1, v0}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->a(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 182
    :cond_4
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 189
    :catch_1
    move-exception v1

    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    const-string v3, "Infinite recursion (StackOverflowError)"

    invoke-direct {v1, v3}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    .line 190
    array-length v3, v0

    if-ne v2, v3, :cond_5

    const-string v0, "[anySetter]"

    .line 191
    :goto_4
    new-instance v2, Lorg/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v2, p1, v0}, Lorg/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/map/JsonMappingException$Reference;)V

    .line 192
    throw v1

    .line 190
    :cond_5
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private c(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->c:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lorg/codehaus/jackson/map/SerializerProvider;->a()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->c:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 216
    :goto_0
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->b(Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;

    move-result-object v1

    .line 217
    const/4 v2, 0x0

    .line 219
    :try_start_0
    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 220
    aget-object v4, v0, v2

    .line 221
    if-eqz v4, :cond_0

    .line 222
    invoke-interface {v1, p1, p2, p3, v4}, Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    .line 219
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->b:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    goto :goto_0

    .line 225
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->d:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    if-eqz v1, :cond_3

    .line 226
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->d:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-virtual {v1, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    :cond_3
    :goto_2
    return-void

    .line 228
    :catch_0
    move-exception v1

    .line 229
    array-length v3, v0

    if-ne v2, v3, :cond_4

    const-string v0, "[anySetter]"

    .line 230
    :goto_3
    invoke-static {p3, v1, p1, v0}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->a(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 229
    :cond_4
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 232
    :catch_1
    move-exception v1

    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    const-string v3, "Infinite recursion (StackOverflowError)"

    invoke-direct {v1, v3}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    .line 233
    array-length v3, v0

    if-ne v2, v3, :cond_5

    const-string v0, "[anySetter]"

    .line 234
    :goto_4
    new-instance v2, Lorg/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v2, p1, v0}, Lorg/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/map/JsonMappingException$Reference;)V

    .line 235
    throw v1

    .line 233
    :cond_5
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    .line 139
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->c(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 144
    :goto_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    .line 145
    return-void

    .line 142
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 153
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->c(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 158
    :goto_0
    invoke-virtual {p4, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->b(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 159
    return-void

    .line 156
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 305
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->c:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-nez v1, :cond_2

    move v2, v0

    .line 306
    :goto_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->b:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    array-length v4, v1

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_5

    .line 307
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->b:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    aget-object v5, v0, v3

    .line 308
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->e()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 318
    if-nez v0, :cond_3

    .line 319
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->f()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->s()Z

    move-result v1

    if-nez v1, :cond_3

    .line 326
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->f()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->h()I

    move-result v1

    if-lez v1, :cond_1

    .line 327
    :cond_0
    invoke-virtual {v5, v0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->a(Lorg/codehaus/jackson/type/JavaType;)V

    .line 306
    :cond_1
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 305
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->c:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    array-length v1, v1

    move v2, v1

    goto :goto_0

    .line 332
    :cond_3
    invoke-virtual {p1, v0, v5}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 336
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->f()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 337
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->g()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->u()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/TypeSerializer;

    .line 338
    if-eqz v0, :cond_4

    .line 340
    instance-of v6, v1, Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;

    if-eqz v6, :cond_4

    .line 343
    check-cast v1, Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;->b(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;

    move-result-object v1

    .line 348
    :cond_4
    invoke-virtual {v5, v1}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->a(Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v0

    .line 349
    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->b:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    aput-object v0, v5, v3

    .line 351
    if-ge v3, v2, :cond_1

    .line 352
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->c:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    aget-object v0, v0, v3

    .line 353
    if-eqz v0, :cond_1

    .line 354
    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->c:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->a(Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v0

    aput-object v0, v5, v3

    goto :goto_2

    .line 360
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->d:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    if-eqz v0, :cond_6

    .line 361
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->d:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->a(Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 363
    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BeanSerializer for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
