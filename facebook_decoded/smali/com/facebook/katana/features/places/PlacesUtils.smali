.class public Lcom/facebook/katana/features/places/PlacesUtils;
.super Ljava/lang/Object;
.source "PlacesUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookCheckin;J)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    const-string v0, "places:last_checkin_pageid"

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookCheckin;->b()Lcom/facebook/katana/model/FacebookCheckinDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookCheckinDetails;->b()Lcom/facebook/katana/model/FacebookPlace;

    move-result-object v1

    iget-wide v1, v1, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    const-string v0, "places:last_checkin_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookCheckin;->n()Ljava/lang/String;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    const-string v1, "places:last_checkin"

    invoke-static {p0, v1, v0}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    :cond_0
    return-void
.end method
