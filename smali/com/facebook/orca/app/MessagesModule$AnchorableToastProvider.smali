.class Lcom/facebook/orca/app/MessagesModule$AnchorableToastProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/ui/widgets/AnchorableToast;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 973
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$AnchorableToastProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/common/ui/widgets/AnchorableToast;
    .locals 3

    .prologue
    .line 977
    new-instance v2, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$AnchorableToastProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$AnchorableToastProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$AnchorableToastProvider;->b()Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    move-result-object v0

    return-object v0
.end method
