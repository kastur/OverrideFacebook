.class Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDatabaseProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Landroid/database/sqlite/SQLiteDatabase;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDatabaseProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V

    return-void
.end method

.method private b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDatabaseProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDatabaseProvider;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
