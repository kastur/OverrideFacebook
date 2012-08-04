.class public Lcom/facebook/orca/notify/OrcaForegroundActivityListener;
.super Lcom/facebook/orca/activity/AbstractFbActivityListener;
.source "OrcaForegroundActivityListener.java"


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/facebook/orca/activity/AbstractFbActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaForegroundActivityListener;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/facebook/orca/notify/OrcaForegroundActivityListener;->a:Landroid/app/Activity;

    .line 16
    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/notify/OrcaForegroundActivityListener;->a:Landroid/app/Activity;

    .line 21
    return-void
.end method
