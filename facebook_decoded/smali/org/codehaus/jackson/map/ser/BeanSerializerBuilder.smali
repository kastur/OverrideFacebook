.class public Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;
.super Ljava/lang/Object;
.source "BeanSerializerBuilder.java"


# static fields
.field private static final a:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;


# instance fields
.field private b:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation
.end field

.field private d:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

.field private e:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

.field private f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    sput-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->a:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->b:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 64
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->c:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->f:Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->c:Ljava/util/List;

    .line 83
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/map/ser/AnyGetterWriter;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->e:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    .line 91
    return-void
.end method

.method public final a([Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->d:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 87
    return-void
.end method

.method public final b()Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v2, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->a:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 111
    :goto_0
    new-instance v0, Lorg/codehaus/jackson/map/ser/BeanSerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->b:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->d:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->e:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->f:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/BeanSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V

    return-object v0

    .line 109
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->c:Ljava/util/List;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-object v2, v0

    goto :goto_0
.end method

.method public final c()Lorg/codehaus/jackson/map/ser/BeanSerializer;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->b:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ser/BeanSerializer;

    move-result-object v0

    return-object v0
.end method
