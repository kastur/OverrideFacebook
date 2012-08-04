.class public Lcom/facebook/katana/activity/notifications/NotificationsActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "NotificationsActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    const v0, 0x7f03006a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/notifications/NotificationsActivity;->setContentView(I)V

    .line 27
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method
