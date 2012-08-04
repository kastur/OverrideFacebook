.class public Lcom/facebook/orca/app/OrcaActivityBroadcaster;
.super Lcom/facebook/orca/app/ActivityBroadcaster;
.source "OrcaActivityBroadcaster.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/ActivityBroadcaster;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 64
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "threadid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "actionid"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    const-string v1, "com.facebook.orca.ACTION_LOGGED_OUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    const-string v0, "com.facebook.orca.ACTION_THREAD_UPDATED_FOR_UI"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 44
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    const-string v1, "com.facebook.orca.ACTION_DELETED_MESSAGES_FOR_UI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v1, "threadid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "message_ids"

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableSet;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 52
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    const-string v0, "com.facebook.orca.ACTION_THREAD_UPDATED_FOR_UI"

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    const-string v0, "com.facebook.orca.ACTION_READ_THREAD_FOR_UI"

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    const-string v0, "com.facebook.orca.ACTION_REMOVED_THREAD_FOR_UI"

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
