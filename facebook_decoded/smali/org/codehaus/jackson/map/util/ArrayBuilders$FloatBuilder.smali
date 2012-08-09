.class public final Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;
.super Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder",
        "<[F>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method

.method private static b(I)[F
    .locals 1
    .parameter

    .prologue
    .line 129
    new-array v0, p0, [F

    return-object v0
.end method


# virtual methods
.method public final synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 124
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;->b(I)[F

    move-result-object v0

    return-object v0
.end method
