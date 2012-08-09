.class public Lcom/facebook/orca/cache/SaveDraftManager;
.super Ljava/lang/Object;
.source "SaveDraftManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/compose/MessageDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/orca/cache/SaveDraftManager;->a:Ljavax/inject/Provider;

    .line 32
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/SaveDraftManager;->b:Ljava/util/Map;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/cache/SaveDraftManager;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/orca/cache/SaveDraftManager;->b:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/facebook/orca/compose/MessageDraft;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/cache/SaveDraftManager;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Z)V

    .line 38
    new-instance v1, Lcom/facebook/orca/cache/SaveDraftManager$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/cache/SaveDraftManager$1;-><init>(Lcom/facebook/orca/cache/SaveDraftManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 50
    iget-object v1, p0, Lcom/facebook/orca/cache/SaveDraftManager;->b:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string v2, "threadId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "draft"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    const-string v2, "save_draft"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/orca/cache/SaveDraftManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/orca/compose/MessageDraft;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/orca/cache/SaveDraftManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/MessageDraft;

    return-object v0
.end method
