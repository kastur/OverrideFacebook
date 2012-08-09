.class public Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;
.super Lcom/facebook/orca/database/DbPropertyUtil;
.source "AnalyticsPropertyUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/database/DbPropertyUtil",
        "<",
        "Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    const-string v0, "analytics_db_properties"

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/database/DbPropertyUtil;-><init>(Ljavax/inject/Provider;Ljava/lang/String;)V

    .line 17
    return-void
.end method
