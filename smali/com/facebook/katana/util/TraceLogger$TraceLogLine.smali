.class public Lcom/facebook/katana/util/TraceLogger$TraceLogLine;
.super Ljava/lang/Object;
.source "TraceLogger.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/katana/util/TraceLogger$TraceLogLine;->a:Ljava/lang/String;

    .line 24
    iput-wide p2, p0, Lcom/facebook/katana/util/TraceLogger$TraceLogLine;->b:J

    .line 25
    return-void
.end method
