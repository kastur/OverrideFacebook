.class public final Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;
.super Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder",
        "<[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method

.method private static b(I)[D
    .locals 1
    .parameter

    .prologue
    .line 136
    new-array v0, p0, [D

    return-object v0
.end method


# virtual methods
.method public final synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 131
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;->b(I)[D

    move-result-object v0

    return-object v0
.end method
