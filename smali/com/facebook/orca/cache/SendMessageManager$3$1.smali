.class Lcom/facebook/orca/cache/SendMessageManager$3$1;
.super Ljava/lang/Object;
.source "SendMessageManager.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/facebook/orca/threads/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/cache/SendMessageManager$3;


# direct methods
.method constructor <init>(Lcom/facebook/orca/cache/SendMessageManager$3;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/facebook/orca/cache/SendMessageManager$3$1;->a:Lcom/facebook/orca/cache/SendMessageManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;)Z
    .locals 2
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager$3$1;->a:Lcom/facebook/orca/cache/SendMessageManager$3;

    iget-object v0, v0, Lcom/facebook/orca/cache/SendMessageManager$3;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 365
    check-cast p1, Lcom/facebook/orca/threads/Message;

    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/SendMessageManager$3$1;->a(Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    return v0
.end method
