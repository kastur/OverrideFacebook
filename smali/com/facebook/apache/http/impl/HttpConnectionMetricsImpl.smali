.class public Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;
.super Ljava/lang/Object;
.source "HttpConnectionMetricsImpl.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpConnectionMetrics;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/io/HttpTransportMetrics;Lcom/facebook/apache/http/io/HttpTransportMetrics;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide v0, p0, Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;->a:J

    .line 49
    iput-wide v0, p0, Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;->b:J

    .line 60
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;->a:J

    .line 88
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;->b:J

    .line 96
    return-void
.end method
