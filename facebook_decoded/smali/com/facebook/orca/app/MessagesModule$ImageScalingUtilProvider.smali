.class Lcom/facebook/orca/app/MessagesModule$ImageScalingUtilProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/images/ImageScalingUtil;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1318
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1318
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ImageScalingUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/images/ImageScalingUtil;
    .locals 2

    .prologue
    .line 1322
    new-instance v1, Lcom/facebook/orca/images/ImageScalingUtil;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$ImageScalingUtilProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/facebook/orca/images/ImageScalingUtil;-><init>(Landroid/content/Context;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1318
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$ImageScalingUtilProvider;->b()Lcom/facebook/orca/images/ImageScalingUtil;

    move-result-object v0

    return-object v0
.end method
