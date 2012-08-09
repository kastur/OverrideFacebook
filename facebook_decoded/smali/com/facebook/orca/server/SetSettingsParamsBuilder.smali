.class public Lcom/facebook/orca/server/SetSettingsParamsBuilder;
.super Ljava/lang/Object;
.source "SetSettingsParamsBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/facebook/orca/notify/NotificationSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/notify/NotificationSetting;)Lcom/facebook/orca/server/SetSettingsParamsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/facebook/orca/server/SetSettingsParamsBuilder;->b:Lcom/facebook/orca/notify/NotificationSetting;

    .line 33
    return-object p0
.end method

.method public final a(Z)Lcom/facebook/orca/server/SetSettingsParamsBuilder;
    .locals 1
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/server/SetSettingsParamsBuilder;->a:Z

    .line 24
    return-object p0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/facebook/orca/server/SetSettingsParamsBuilder;->a:Z

    return v0
.end method

.method public final b()Lcom/facebook/orca/notify/NotificationSetting;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/server/SetSettingsParamsBuilder;->b:Lcom/facebook/orca/notify/NotificationSetting;

    return-object v0
.end method

.method public final c()Lcom/facebook/orca/server/SetSettingsParams;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/facebook/orca/server/SetSettingsParams;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/SetSettingsParams;-><init>(Lcom/facebook/orca/server/SetSettingsParamsBuilder;)V

    return-object v0
.end method
