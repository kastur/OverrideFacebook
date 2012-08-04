.class Lcom/facebook/orca/presence/PresenceManager$4;
.super Ljava/lang/Object;
.source "PresenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/Map;

.field private synthetic b:Z

.field private synthetic c:Lcom/facebook/orca/presence/PresenceManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/presence/PresenceManager;Ljava/util/Map;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/facebook/orca/presence/PresenceManager$4;->c:Lcom/facebook/orca/presence/PresenceManager;

    iput-object p2, p0, Lcom/facebook/orca/presence/PresenceManager$4;->a:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/facebook/orca/presence/PresenceManager$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 557
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager$4;->c:Lcom/facebook/orca/presence/PresenceManager;

    iget-object v1, p0, Lcom/facebook/orca/presence/PresenceManager$4;->a:Ljava/util/Map;

    iget-boolean v2, p0, Lcom/facebook/orca/presence/PresenceManager$4;->b:Z

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/presence/PresenceManager;Ljava/util/Map;Z)V

    .line 558
    return-void
.end method
