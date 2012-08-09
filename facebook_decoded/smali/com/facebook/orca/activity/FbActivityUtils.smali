.class public final Lcom/facebook/orca/activity/FbActivityUtils;
.super Ljava/lang/Object;
.source "FbActivityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    check-cast p0, Lcom/facebook/orca/activity/FbActivityish;

    .line 24
    if-eqz p0, :cond_0

    .line 25
    invoke-interface {p0}, Lcom/facebook/orca/activity/FbActivityish;->b()Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
