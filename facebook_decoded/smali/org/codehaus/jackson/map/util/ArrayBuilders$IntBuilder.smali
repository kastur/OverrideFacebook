.class public final Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;
.super Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder",
        "<[I>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method

.method private static b(I)[I
    .locals 1
    .parameter

    .prologue
    .line 114
    new-array v0, p0, [I

    return-object v0
.end method


# virtual methods
.method public final synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;->b(I)[I

    move-result-object v0

    return-object v0
.end method
