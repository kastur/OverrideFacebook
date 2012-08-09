.class public final Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;
.super Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder",
        "<[S>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method

.method private static b(I)[S
    .locals 1
    .parameter

    .prologue
    .line 107
    new-array v0, p0, [S

    return-object v0
.end method


# virtual methods
.method public final synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;->b(I)[S

    move-result-object v0

    return-object v0
.end method
