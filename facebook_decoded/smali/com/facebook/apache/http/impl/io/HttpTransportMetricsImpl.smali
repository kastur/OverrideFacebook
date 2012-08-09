.class public Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;
.super Ljava/lang/Object;
.source "HttpTransportMetricsImpl.java"

# interfaces
.implements Lcom/facebook/apache/http/io/HttpTransportMetrics;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;->a:J

    .line 43
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;->a:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;->a:J

    .line 55
    return-void
.end method
