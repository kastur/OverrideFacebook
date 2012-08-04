.class public final Lcom/facebook/orca/debug/WtfToken;
.super Ljava/lang/Object;
.source "WtfToken.java"


# instance fields
.field private final a:Lcom/facebook/orca/common/util/RateLimiter;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/facebook/orca/common/util/RateLimiter;

    invoke-static {}, Lcom/facebook/orca/common/util/SystemClock;->b()Lcom/facebook/orca/common/util/SystemClock;

    move-result-object v1

    const/4 v2, 0x2

    sget-wide v3, Lcom/facebook/orca/common/util/TimeConstants;->c:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/orca/common/util/RateLimiter;-><init>(Lcom/facebook/orca/common/util/Clock;IJ)V

    iput-object v0, p0, Lcom/facebook/orca/debug/WtfToken;->a:Lcom/facebook/orca/common/util/RateLimiter;

    .line 25
    return-void
.end method
