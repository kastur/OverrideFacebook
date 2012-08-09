.class public Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;
.super Lorg/codehaus/jackson/map/SerializerFactory$Config;
.source "BeanSerializerFactory.java"


# static fields
.field private static a:[Lorg/codehaus/jackson/map/Serializers;

.field private static b:[Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;


# instance fields
.field private c:[Lorg/codehaus/jackson/map/Serializers;

.field private d:[Lorg/codehaus/jackson/map/Serializers;

.field private e:[Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    new-array v0, v1, [Lorg/codehaus/jackson/map/Serializers;

    sput-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->a:[Lorg/codehaus/jackson/map/Serializers;

    .line 85
    new-array v0, v1, [Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    sput-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->b:[Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0, v0, v0}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;-><init>([Lorg/codehaus/jackson/map/Serializers;[Lorg/codehaus/jackson/map/Serializers;[Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;)V

    .line 108
    return-void
.end method

.method private constructor <init>([Lorg/codehaus/jackson/map/Serializers;[Lorg/codehaus/jackson/map/Serializers;[Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/codehaus/jackson/map/SerializerFactory$Config;-><init>()V

    .line 114
    sget-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->a:[Lorg/codehaus/jackson/map/Serializers;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->c:[Lorg/codehaus/jackson/map/Serializers;

    .line 116
    sget-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->a:[Lorg/codehaus/jackson/map/Serializers;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->d:[Lorg/codehaus/jackson/map/Serializers;

    .line 118
    sget-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->b:[Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->e:[Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 119
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->d:[Lorg/codehaus/jackson/map/Serializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->e:[Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/Serializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->c:[Lorg/codehaus/jackson/map/Serializers;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/Serializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->d:[Lorg/codehaus/jackson/map/Serializers;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->e:[Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
