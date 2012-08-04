.class public Lcom/facebook/orca/presence/PresenceManager$MyActivityListener;
.super Lcom/facebook/orca/activity/AbstractFbActivityListener;
.source "PresenceManager.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/presence/PresenceManager;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/presence/PresenceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/facebook/orca/presence/PresenceManager$MyActivityListener;->a:Lcom/facebook/orca/presence/PresenceManager;

    invoke-direct {p0}, Lcom/facebook/orca/activity/AbstractFbActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 355
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager$MyActivityListener;->a:Lcom/facebook/orca/presence/PresenceManager;

    invoke-static {v0}, Lcom/facebook/orca/presence/PresenceManager;->b(Lcom/facebook/orca/presence/PresenceManager;)V

    .line 356
    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 360
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager$MyActivityListener;->a:Lcom/facebook/orca/presence/PresenceManager;

    invoke-static {v0}, Lcom/facebook/orca/presence/PresenceManager;->c(Lcom/facebook/orca/presence/PresenceManager;)V

    .line 361
    return-void
.end method

.method public final w()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager$MyActivityListener;->a:Lcom/facebook/orca/presence/PresenceManager;

    invoke-static {v0}, Lcom/facebook/orca/presence/PresenceManager;->d(Lcom/facebook/orca/presence/PresenceManager;)V

    .line 366
    return-void
.end method
