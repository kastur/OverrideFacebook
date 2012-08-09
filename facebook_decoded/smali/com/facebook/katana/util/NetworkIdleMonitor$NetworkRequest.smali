.class Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;
.super Ljava/lang/Object;
.source "NetworkIdleMonitor.java"


# instance fields
.field public a:J

.field public b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;->b:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;-><init>()V

    return-void
.end method
