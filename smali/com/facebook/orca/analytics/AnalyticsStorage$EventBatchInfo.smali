.class public Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;
.super Ljava/lang/Object;
.source "AnalyticsStorage.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/analytics/AnalyticsStorage;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->a:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->b:Ljava/lang/String;

    .line 52
    iput-wide p4, p0, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->c:J

    .line 53
    iput-object p6, p0, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->e:Ljava/lang/String;

    .line 54
    iput-wide p7, p0, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->d:J

    .line 56
    return-void
.end method
