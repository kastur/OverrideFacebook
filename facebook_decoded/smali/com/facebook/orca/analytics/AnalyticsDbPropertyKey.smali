.class public Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;
.super Lcom/facebook/orca/common/util/TypedKey;
.source "AnalyticsDbPropertyKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/common/util/TypedKey",
        "<",
        "Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/util/TypedKey;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method private static c(Ljava/lang/String;)Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;
    .locals 1
    .parameter

    .prologue
    .line 18
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    invoke-direct {v0, p0}, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-static {p1}, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    move-result-object v0

    return-object v0
.end method
