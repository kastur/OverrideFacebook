.class Lcom/facebook/katana/IntentUriHandler$NativeUriHandler;
.super Ljava/lang/Object;
.source "IntentUriHandler.java"

# interfaces
.implements Lcom/facebook/katana/IntentUriHandler$UriHandler;


# instance fields
.field private final a:Landroid/os/Bundle;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/facebook/katana/IntentUriHandler$NativeUriHandler;->b:Ljava/lang/Class;

    .line 101
    iput-object p2, p0, Lcom/facebook/katana/IntentUriHandler$NativeUriHandler;->a:Landroid/os/Bundle;

    .line 102
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/katana/IntentUriHandler$NativeUriHandler;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    .line 111
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/IntentUriHandler$NativeUriHandler;->b:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    iget-object v1, p0, Lcom/facebook/katana/IntentUriHandler$NativeUriHandler;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/facebook/katana/IntentUriHandler$NativeUriHandler;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 115
    :cond_1
    if-eqz p2, :cond_2

    .line 116
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 118
    :cond_2
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
