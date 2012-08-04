.class Lcom/facebook/orca/app/MessagesModule$ThreadNameViewComputerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 984
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 984
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ThreadNameViewComputerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;
    .locals 4

    .prologue
    .line 988
    new-instance v3, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;

    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$ThreadNameViewComputerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    const-class v1, Landroid/content/res/Resources;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$ThreadNameViewComputerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    const-class v2, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadNameViewComputerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;-><init>(Lcom/facebook/orca/cache/ThreadDisplayCache;Landroid/content/res/Resources;Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;)V

    return-object v3
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 984
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$ThreadNameViewComputerProvider;->b()Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;

    move-result-object v0

    return-object v0
.end method
