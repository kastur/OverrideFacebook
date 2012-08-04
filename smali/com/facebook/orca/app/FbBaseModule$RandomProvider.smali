.class Lcom/facebook/orca/app/FbBaseModule$RandomProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Ljava/util/Random;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/facebook/orca/app/FbBaseModule$RandomProvider;-><init>()V

    return-void
.end method

.method private static b()Ljava/util/Random;
    .locals 1

    .prologue
    .line 242
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/facebook/orca/app/FbBaseModule$RandomProvider;->b()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method
