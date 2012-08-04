.class public final Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;
.super Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method

.method private static b(I)[B
    .locals 1
    .parameter

    .prologue
    .line 100
    new-array v0, p0, [B

    return-object v0
.end method


# virtual methods
.method public final synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;->b(I)[B

    move-result-object v0

    return-object v0
.end method
